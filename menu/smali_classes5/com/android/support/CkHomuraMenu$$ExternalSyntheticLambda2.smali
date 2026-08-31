.class public final synthetic Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/support/CkHomuraMenu;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/support/CkHomuraMenu;ILjava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda2;->f$0:Lcom/android/support/CkHomuraMenu;

    iput p2, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda2;->f$0:Lcom/android/support/CkHomuraMenu;

    iget v1, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda2;->f$1:I

    iget-object v2, p0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/support/CkHomuraMenu;->lambda$Button$9$com-android-support-CkHomuraMenu(ILjava/lang/String;Landroid/view/View;)V

    return-void
.end method
