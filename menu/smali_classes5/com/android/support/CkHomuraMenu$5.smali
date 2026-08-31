.class Lcom/android/support/CkHomuraMenu$5;
.super Ljava/lang/Object;
.source "CkHomuraMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/support/CkHomuraMenu;->Collapse(Landroid/widget/LinearLayout;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isChecked:Z

.field final synthetic this$0:Lcom/android/support/CkHomuraMenu;

.field final synthetic val$collapseSub:Landroid/widget/LinearLayout;

.field final synthetic val$expanded:Z

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/support/CkHomuraMenu;ZLandroid/widget/LinearLayout;Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 962
    iput-object p1, p0, Lcom/android/support/CkHomuraMenu$5;->this$0:Lcom/android/support/CkHomuraMenu;

    iput-boolean p2, p0, Lcom/android/support/CkHomuraMenu$5;->val$expanded:Z

    iput-object p3, p0, Lcom/android/support/CkHomuraMenu$5;->val$collapseSub:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcom/android/support/CkHomuraMenu$5;->val$textView:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/android/support/CkHomuraMenu$5;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 963
    iput-boolean p2, p0, Lcom/android/support/CkHomuraMenu$5;->isChecked:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 968
    iget-boolean p1, p0, Lcom/android/support/CkHomuraMenu$5;->isChecked:Z

    xor-int/lit8 v0, p1, 0x1

    .line 969
    iput-boolean v0, p0, Lcom/android/support/CkHomuraMenu$5;->isChecked:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_21

    .line 971
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu$5;->val$collapseSub:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 972
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu$5;->val$textView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/support/CkHomuraMenu$5;->val$text:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    const-string v0, "\u25b3 %s \u25b3"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 975
    :cond_21
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu$5;->val$collapseSub:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 976
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu$5;->val$textView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/support/CkHomuraMenu$5;->val$text:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    const-string v0, "\u25bd %s \u25bd"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
