.class public final synthetic Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/support/CkHomuraMenu;

.field public final synthetic f$1:Landroid/widget/TextView;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:I

.field public final synthetic f$5:Landroid/widget/RadioGroup;

.field public final synthetic f$6:Landroid/widget/RadioButton;


# direct methods
.method public synthetic constructor <init>(Lcom/android/support/CkHomuraMenu;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;ILandroid/widget/RadioGroup;Landroid/widget/RadioButton;)V
    .registers 8

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda18;->f$0:Lcom/android/support/CkHomuraMenu;

    iput-object p2, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda18;->f$1:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda18;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda18;->f$3:Ljava/lang/String;

    iput p5, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda18;->f$4:I

    iput-object p6, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda18;->f$5:Landroid/widget/RadioGroup;

    iput-object p7, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda18;->f$6:Landroid/widget/RadioButton;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 10

    .line 0
    iget-object v0, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda18;->f$0:Lcom/android/support/CkHomuraMenu;

    iget-object v1, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda18;->f$1:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda18;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda18;->f$3:Ljava/lang/String;

    iget v4, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda18;->f$4:I

    iget-object v5, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda18;->f$5:Landroid/widget/RadioGroup;

    iget-object v6, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda18;->f$6:Landroid/widget/RadioButton;

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/support/CkHomuraMenu;->lambda$RadioButton$20$com-android-support-CkHomuraMenu(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;ILandroid/widget/RadioGroup;Landroid/widget/RadioButton;Landroid/view/View;)V

    return-void
.end method
