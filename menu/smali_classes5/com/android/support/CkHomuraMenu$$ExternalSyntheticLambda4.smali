.class public final synthetic Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/widget/Switch;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ILandroid/widget/Switch;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    iput p2, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda4;->f$1:I

    iput-object p3, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda4;->f$2:Landroid/widget/Switch;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 6

    .line 0
    iget-object v0, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    iget v1, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda4;->f$1:I

    iget-object v2, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda4;->f$2:Landroid/widget/Switch;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/support/CkHomuraMenu;->lambda$Switch$8(Ljava/lang/String;ILandroid/widget/Switch;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
