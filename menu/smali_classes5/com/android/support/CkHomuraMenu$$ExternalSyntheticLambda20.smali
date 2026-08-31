.class public final synthetic Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda20;->f$0:Ljava/lang/String;

    iput p2, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda20;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda20;->f$0:Ljava/lang/String;

    iget v1, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda20;->f$1:I

    invoke-static {v0, v1, p1}, Lcom/android/support/CkHomuraMenu;->lambda$OnceCheckBox$6(Ljava/lang/String;ILandroid/view/View;)V

    return-void
.end method
