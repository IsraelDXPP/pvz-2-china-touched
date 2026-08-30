#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/mman.h>

extern "C" {

static const uint32_t ARM32_LDR_PC = 0xE51FF004u;

struct Arm32HookBackup {
    uint32_t instructions[2];
    uint32_t jump;
    uint32_t resume;
};

void A64HookFunction(void *symbol, void *replace, void **result)
{
    uintptr_t target = (uintptr_t)symbol;
    if (result != nullptr)
        *result = nullptr;
    if (symbol == nullptr || replace == nullptr || (target & 3u) != 0)
        return;

    long page_size = sysconf(_SC_PAGESIZE);
    uintptr_t page_begin = target & ~((uintptr_t)page_size - 1);
    mprotect((void *)page_begin, page_size, PROT_READ | PROT_WRITE | PROT_EXEC);

    Arm32HookBackup *backup = (Arm32HookBackup *)mmap(
        nullptr, sizeof(Arm32HookBackup),
        PROT_READ | PROT_WRITE | PROT_EXEC,
        MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
    if (backup == MAP_FAILED)
        return;

    memcpy(backup->instructions, (void *)target, sizeof(backup->instructions));
    backup->jump = ARM32_LDR_PC;
    backup->resume = (uint32_t)target + sizeof(backup->instructions);
    __builtin___clear_cache((char *)backup, (char *)backup + sizeof(Arm32HookBackup));

    if (result != nullptr)
        *result = backup;

    uint32_t patch[2];
    patch[0] = ARM32_LDR_PC;
    patch[1] = (uint32_t)replace;
    memcpy((void *)target, patch, sizeof(patch));
    __builtin___clear_cache((char *)target, (char *)target + sizeof(patch));
}

}