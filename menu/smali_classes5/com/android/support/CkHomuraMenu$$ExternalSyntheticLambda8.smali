.class public final synthetic Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/support/CkHomuraMenu;

.field public final synthetic f$1:Landroid/widget/EditText;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/widget/Button;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/support/CkHomuraMenu;Landroid/widget/EditText;ILandroid/widget/Button;Ljava/lang/String;I)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda8;->f$0:Lcom/android/support/CkHomuraMenu;

    iput-object p2, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda8;->f$1:Landroid/widget/EditText;

    iput p3, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda8;->f$2:I

    iput-object p4, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda8;->f$3:Landroid/widget/Button;

    iput-object p5, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda8;->f$4:Ljava/lang/String;

    iput p6, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda8;->f$5:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 11

    .line 0
    iget-object v0, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda8;->f$0:Lcom/android/support/CkHomuraMenu;

    iget-object v1, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda8;->f$1:Landroid/widget/EditText;

    iget v2, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda8;->f$2:I

    iget-object v3, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda8;->f$3:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda8;->f$4:Ljava/lang/String;

    iget v5, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda8;->f$5:I

    move-object v6, p1

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/support/CkHomuraMenu;->lambda$InputNum$12$com-android-support-CkHomuraMenu(Landroid/widget/EditText;ILandroid/widget/Button;Ljava/lang/String;ILandroid/content/DialogInterface;I)V

    return-void
.end method
