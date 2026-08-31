.class Lcom/android/support/CkHomuraMenu$4;
.super Ljava/lang/Object;
.source "CkHomuraMenu.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/support/CkHomuraMenu;->Spinner(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/support/CkHomuraMenu;

.field final synthetic val$featNum:I

.field final synthetic val$spinner:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/android/support/CkHomuraMenu;Landroid/widget/Spinner;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 728
    iput-object p1, p0, Lcom/android/support/CkHomuraMenu$4;->this$0:Lcom/android/support/CkHomuraMenu;

    iput-object p2, p0, Lcom/android/support/CkHomuraMenu$4;->val$spinner:Landroid/widget/Spinner;

    iput p3, p0, Lcom/android/support/CkHomuraMenu$4;->val$featNum:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 731
    iget-object p2, p0, Lcom/android/support/CkHomuraMenu$4;->val$spinner:Landroid/widget/Spinner;

    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget p4, p0, Lcom/android/support/CkHomuraMenu$4;->val$featNum:I

    invoke-static {p2, p4, p3}, Lcom/android/support/Preferences;->changeFeatureInt(Ljava/lang/String;II)V

    const/4 p2, 0x0

    .line 732
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/support/CkHomuraMenu$4;->this$0:Lcom/android/support/CkHomuraMenu;

    iget p2, p2, Lcom/android/support/CkHomuraMenu;->TEXT_COLOR_2:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
