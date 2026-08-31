.class Lcom/android/support/CkHomuraMenu$1;
.super Ljava/lang/Object;
.source "CkHomuraMenu.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/support/CkHomuraMenu;->onTouchListener()Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final collapsedView:Landroid/view/View;

.field final expandedView:Landroid/view/View;

.field private initialTime:J

.field private initialTouchX:F

.field private initialTouchY:F

.field private initialX:I

.field private initialY:I

.field final synthetic this$0:Lcom/android/support/CkHomuraMenu;

.field final synthetic val$sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/android/support/CkHomuraMenu;Landroid/content/SharedPreferences;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 337
    iput-object p1, p0, Lcom/android/support/CkHomuraMenu$1;->this$0:Lcom/android/support/CkHomuraMenu;

    iput-object p2, p0, Lcom/android/support/CkHomuraMenu$1;->val$sharedPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    iget-object p2, p1, Lcom/android/support/CkHomuraMenu;->mCollapsed:Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/android/support/CkHomuraMenu$1;->collapsedView:Landroid/view/View;

    .line 339
    iget-object p1, p1, Lcom/android/support/CkHomuraMenu;->mExpanded:Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/support/CkHomuraMenu$1;->expandedView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    .line 345
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_105

    const/4 v1, 0x0

    if-eq p1, v0, :cond_50

    const/4 v2, 0x2

    if-eq p1, v2, :cond_e

    return v1

    .line 354
    :cond_e
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu$1;->this$0:Lcom/android/support/CkHomuraMenu;

    iget-object p1, p1, Lcom/android/support/CkHomuraMenu;->mExpanded:Landroid/widget/LinearLayout;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 355
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu$1;->this$0:Lcom/android/support/CkHomuraMenu;

    iget-object p1, p1, Lcom/android/support/CkHomuraMenu;->mCollapsed:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 356
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu$1;->this$0:Lcom/android/support/CkHomuraMenu;

    iget-object p1, p1, Lcom/android/support/CkHomuraMenu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/support/CkHomuraMenu$1;->initialX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/android/support/CkHomuraMenu$1;->initialTouchX:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 357
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu$1;->this$0:Lcom/android/support/CkHomuraMenu;

    iget-object p1, p1, Lcom/android/support/CkHomuraMenu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/support/CkHomuraMenu$1;->initialY:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v2, p0, Lcom/android/support/CkHomuraMenu$1;->initialTouchY:F

    sub-float/2addr p2, v2

    float-to-int p2, p2

    add-int/2addr v1, p2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 358
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu$1;->this$0:Lcom/android/support/CkHomuraMenu;

    iget-object p1, p1, Lcom/android/support/CkHomuraMenu;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/android/support/CkHomuraMenu$1;->this$0:Lcom/android/support/CkHomuraMenu;

    iget-object p2, p2, Lcom/android/support/CkHomuraMenu;->rootFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/support/CkHomuraMenu$1;->this$0:Lcom/android/support/CkHomuraMenu;

    iget-object v1, v1, Lcom/android/support/CkHomuraMenu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return v0

    .line 361
    :cond_50
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v2, p0, Lcom/android/support/CkHomuraMenu$1;->initialTouchX:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-int p1, p1

    .line 362
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v2, p0, Lcom/android/support/CkHomuraMenu$1;->initialTouchY:F

    sub-float/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-int p2, p2

    .line 363
    iget-object v2, p0, Lcom/android/support/CkHomuraMenu$1;->this$0:Lcom/android/support/CkHomuraMenu;

    iget-object v2, v2, Lcom/android/support/CkHomuraMenu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/android/support/CkHomuraMenu$1;->this$0:Lcom/android/support/CkHomuraMenu;

    iget-object v3, v3, Lcom/android/support/CkHomuraMenu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Lcom/android/support/CkHomuraMenu$1;->this$0:Lcom/android/support/CkHomuraMenu;

    # getter for: Lcom/android/support/CkHomuraMenu;->SCREEN_WIDTH:I
    invoke-static {v4}, Lcom/android/support/CkHomuraMenu;->access$000(Lcom/android/support/CkHomuraMenu;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 364
    iget-object v2, p0, Lcom/android/support/CkHomuraMenu$1;->this$0:Lcom/android/support/CkHomuraMenu;

    iget-object v2, v2, Lcom/android/support/CkHomuraMenu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/android/support/CkHomuraMenu$1;->this$0:Lcom/android/support/CkHomuraMenu;

    iget-object v3, v3, Lcom/android/support/CkHomuraMenu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Lcom/android/support/CkHomuraMenu$1;->this$0:Lcom/android/support/CkHomuraMenu;

    # getter for: Lcom/android/support/CkHomuraMenu;->SCREEN_HEIGHT:I
    invoke-static {v4}, Lcom/android/support/CkHomuraMenu;->access$100(Lcom/android/support/CkHomuraMenu;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 365
    iget-object v2, p0, Lcom/android/support/CkHomuraMenu$1;->val$sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/support/CkHomuraMenu$1;->this$0:Lcom/android/support/CkHomuraMenu;

    iget-object v3, v3, Lcom/android/support/CkHomuraMenu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    const-string v4, "menuX"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/support/CkHomuraMenu$1;->this$0:Lcom/android/support/CkHomuraMenu;

    iget-object v3, v3, Lcom/android/support/CkHomuraMenu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    const-string v4, "menuY"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 366
    iget-object v2, p0, Lcom/android/support/CkHomuraMenu$1;->this$0:Lcom/android/support/CkHomuraMenu;

    iget-object v2, v2, Lcom/android/support/CkHomuraMenu;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/support/CkHomuraMenu$1;->this$0:Lcom/android/support/CkHomuraMenu;

    iget-object v3, v3, Lcom/android/support/CkHomuraMenu;->rootFrame:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/support/CkHomuraMenu$1;->this$0:Lcom/android/support/CkHomuraMenu;

    iget-object v4, v4, Lcom/android/support/CkHomuraMenu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    iget-object v2, p0, Lcom/android/support/CkHomuraMenu$1;->this$0:Lcom/android/support/CkHomuraMenu;

    iget-object v2, v2, Lcom/android/support/CkHomuraMenu;->mExpanded:Landroid/widget/LinearLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 368
    iget-object v2, p0, Lcom/android/support/CkHomuraMenu$1;->this$0:Lcom/android/support/CkHomuraMenu;

    iget-object v2, v2, Lcom/android/support/CkHomuraMenu;->mCollapsed:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    const/16 v2, 0xa

    if-ge p1, v2, :cond_104

    if-ge p2, v2, :cond_104

    .line 369
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu$1;->this$0:Lcom/android/support/CkHomuraMenu;

    # invokes: Lcom/android/support/CkHomuraMenu;->isViewCollapsed()Z
    invoke-static {p1}, Lcom/android/support/CkHomuraMenu;->access$200(Lcom/android/support/CkHomuraMenu;)Z

    move-result p1

    if-eqz p1, :cond_104

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iget-wide v2, p0, Lcom/android/support/CkHomuraMenu$1;->initialTime:J

    sub-long/2addr p1, v2

    const-wide/32 v2, 0x1dcd6500

    cmp-long v4, p1, v2

    if-gez v4, :cond_104

    .line 371
    :try_start_f8
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu$1;->collapsedView:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 372
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu$1;->expandedView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_104
    .catch Ljava/lang/NullPointerException; {:try_start_f8 .. :try_end_104} :catch_104

    :catch_104
    :cond_104
    return v0

    .line 347
    :cond_105
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu$1;->this$0:Lcom/android/support/CkHomuraMenu;

    iget-object p1, p1, Lcom/android/support/CkHomuraMenu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p1, p0, Lcom/android/support/CkHomuraMenu$1;->initialX:I

    .line 348
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu$1;->this$0:Lcom/android/support/CkHomuraMenu;

    iget-object p1, p1, Lcom/android/support/CkHomuraMenu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p1, p0, Lcom/android/support/CkHomuraMenu$1;->initialY:I

    .line 349
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/android/support/CkHomuraMenu$1;->initialTouchX:F

    .line 350
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/android/support/CkHomuraMenu$1;->initialTouchY:F

    .line 351
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/support/CkHomuraMenu$1;->initialTime:J

    return v0
.end method
