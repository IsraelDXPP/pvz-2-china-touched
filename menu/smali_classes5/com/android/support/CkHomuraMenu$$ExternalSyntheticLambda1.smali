.class public final synthetic Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/CheckBox;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/widget/CheckBox;Ljava/lang/String;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda1;->f$0:Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 6

    .line 0
    iget-object v0, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda1;->f$0:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/support/CkHomuraMenu;->lambda$CheckBox$19(Landroid/widget/CheckBox;Ljava/lang/String;ILandroid/widget/CompoundButton;Z)V

    return-void
.end method
