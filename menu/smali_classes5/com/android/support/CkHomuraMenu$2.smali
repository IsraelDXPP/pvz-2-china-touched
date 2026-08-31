.class Lcom/android/support/CkHomuraMenu$2;
.super Ljava/lang/Object;
.source "CkHomuraMenu.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/support/CkHomuraMenu;->SeekBar(Landroid/widget/LinearLayout;ILjava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/support/CkHomuraMenu;

.field final synthetic val$featName:Ljava/lang/String;

.field final synthetic val$featNum:I

.field final synthetic val$min:I

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/support/CkHomuraMenu;ILjava/lang/String;ILandroid/widget/TextView;)V
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

    .line 584
    iput-object p1, p0, Lcom/android/support/CkHomuraMenu$2;->this$0:Lcom/android/support/CkHomuraMenu;

    iput p2, p0, Lcom/android/support/CkHomuraMenu$2;->val$min:I

    iput-object p3, p0, Lcom/android/support/CkHomuraMenu$2;->val$featName:Ljava/lang/String;

    iput p4, p0, Lcom/android/support/CkHomuraMenu$2;->val$featNum:I

    iput-object p5, p0, Lcom/android/support/CkHomuraMenu$2;->val$textView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 5

    .line 593
    iget p3, p0, Lcom/android/support/CkHomuraMenu$2;->val$min:I

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 594
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu$2;->val$featName:Ljava/lang/String;

    iget p3, p0, Lcom/android/support/CkHomuraMenu$2;->val$featNum:I

    iget v0, p0, Lcom/android/support/CkHomuraMenu$2;->val$min:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1, p3, v0}, Lcom/android/support/Preferences;->changeFeatureInt(Ljava/lang/String;II)V

    .line 595
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu$2;->val$textView:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/support/CkHomuraMenu$2;->val$featName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": <font color=\'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/support/CkHomuraMenu$2;->this$0:Lcom/android/support/CkHomuraMenu;

    iget-object v0, v0, Lcom/android/support/CkHomuraMenu;->NumberTxtColor:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'>"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/support/CkHomuraMenu$2;->val$min:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method
