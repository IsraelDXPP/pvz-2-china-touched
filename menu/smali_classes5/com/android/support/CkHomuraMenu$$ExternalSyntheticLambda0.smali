.class public final synthetic Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/support/CkHomuraMenu;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/widget/Button;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/support/CkHomuraMenu;ILandroid/widget/Button;Ljava/lang/String;I)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda0;->f$0:Lcom/android/support/CkHomuraMenu;

    iput p2, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda0;->f$2:Landroid/widget/Button;

    iput-object p4, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iput p5, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda0;->f$4:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 8

    .line 0
    iget-object v0, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda0;->f$0:Lcom/android/support/CkHomuraMenu;

    iget v1, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda0;->f$2:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iget v4, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda0;->f$4:I

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/support/CkHomuraMenu;->lambda$InputNum$14$com-android-support-CkHomuraMenu(ILandroid/widget/Button;Ljava/lang/String;ILandroid/view/View;)V

    return-void
.end method
