.class public final synthetic Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/support/CkHomuraMenu;

.field public final synthetic f$1:Landroid/widget/Button;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/support/CkHomuraMenu;Landroid/widget/Button;Ljava/lang/String;I)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda5;->f$0:Lcom/android/support/CkHomuraMenu;

    iput-object p2, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda5;->f$1:Landroid/widget/Button;

    iput-object p3, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda5;->f$3:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    .line 0
    iget-object v0, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda5;->f$0:Lcom/android/support/CkHomuraMenu;

    iget-object v1, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda5;->f$1:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    iget v3, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda5;->f$3:I

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/support/CkHomuraMenu;->lambda$InputText$18$com-android-support-CkHomuraMenu(Landroid/widget/Button;Ljava/lang/String;ILandroid/view/View;)V

    return-void
.end method
