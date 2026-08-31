.class public Lcom/android/support/CkHomuraMenu;
.super Ljava/lang/Object;
.source "CkHomuraMenu.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Mod_Menu"


# instance fields
.field BTN_COLOR:I

.field BtnOFF:I

.field BtnON:I

.field CategoryBG:I

.field CheckBoxColor:I

.field ICON_SIZE:I

.field MENU_BG_COLOR:I

.field MENU_FEATURE_BG_COLOR:I

.field MENU_WIDTH:I

.field NumberTxtColor:Ljava/lang/String;

.field POS_X:I

.field POS_Y:I

.field RadioColor:I

.field private SCREEN_HEIGHT:I

.field private SCREEN_WIDTH:I

.field SeekBarColor:I

.field SeekBarProgressColor:I

.field TEXT_COLOR:I

.field TEXT_COLOR_2:I

.field ToggleOFF:I

.field ToggleON:I

.field getContext:Landroid/content/Context;

.field mCollapse:Landroid/widget/LinearLayout;

.field mCollapsed:Landroid/widget/RelativeLayout;

.field mExpanded:Landroid/widget/LinearLayout;

.field mRootContainer:Landroid/widget/RelativeLayout;

.field mSettings:Landroid/widget/LinearLayout;

.field mWindowManager:Landroid/view/WindowManager;

.field mods:Landroid/widget/LinearLayout;

.field rootFrame:Landroid/widget/FrameLayout;

.field scrollView:Landroid/widget/ScrollView;

.field settingsOpen:Z

.field startimage:Landroid/widget/ImageView;

.field vmParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 15

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-string v0, "#82CAFD"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/support/CkHomuraMenu;->TEXT_COLOR:I

    .line 71
    const-string v0, "#FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/support/CkHomuraMenu;->TEXT_COLOR_2:I

    .line 72
    const-string v1, "#1C262D"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/support/CkHomuraMenu;->BTN_COLOR:I

    .line 73
    const-string v1, "#EE1C2A35"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/support/CkHomuraMenu;->MENU_BG_COLOR:I

    .line 74
    const-string v1, "#DD141C22"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/support/CkHomuraMenu;->MENU_FEATURE_BG_COLOR:I

    const/16 v1, 0xc8

    .line 75
    iput v1, p0, Lcom/android/support/CkHomuraMenu;->MENU_WIDTH:I

    const/16 v1, 0x96

    .line 76
    iput v1, p0, Lcom/android/support/CkHomuraMenu;->POS_X:I

    .line 77
    iput v1, p0, Lcom/android/support/CkHomuraMenu;->POS_Y:I

    const/16 v1, 0x2d

    .line 80
    iput v1, p0, Lcom/android/support/CkHomuraMenu;->ICON_SIZE:I

    const v1, -0xff0001

    .line 81
    iput v1, p0, Lcom/android/support/CkHomuraMenu;->ToggleON:I

    const/high16 v1, -0x10000

    .line 82
    iput v1, p0, Lcom/android/support/CkHomuraMenu;->ToggleOFF:I

    .line 83
    const-string v1, "#00ffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/support/CkHomuraMenu;->BtnON:I

    .line 84
    const-string v1, "#7f0000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/support/CkHomuraMenu;->BtnOFF:I

    .line 85
    const-string v1, "#2F3D4C"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/support/CkHomuraMenu;->CategoryBG:I

    .line 86
    const-string v1, "#80CBC4"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/support/CkHomuraMenu;->SeekBarColor:I

    .line 87
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/support/CkHomuraMenu;->SeekBarProgressColor:I

    .line 88
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/support/CkHomuraMenu;->CheckBoxColor:I

    .line 89
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/support/CkHomuraMenu;->RadioColor:I

    .line 90
    const-string v0, "#41c300"

    iput-object v0, p0, Lcom/android/support/CkHomuraMenu;->NumberTxtColor:Ljava/lang/String;

    .line 107
    iput-object p1, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    .line 108
    sput-object p1, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    .line 109
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/support/CkHomuraMenu;->rootFrame:Landroid/widget/FrameLayout;

    .line 110
    invoke-direct {p0}, Lcom/android/support/CkHomuraMenu;->onTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 111
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/support/CkHomuraMenu;->mRootContainer:Landroid/widget/RelativeLayout;

    .line 112
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/support/CkHomuraMenu;->mCollapsed:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    .line 113
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 116
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/support/CkHomuraMenu;->mExpanded:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    .line 117
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->mExpanded:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/android/support/CkHomuraMenu;->MENU_BG_COLOR:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 119
    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->mExpanded:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 121
    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->mExpanded:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/android/support/CkHomuraMenu;->MENU_WIDTH:I

    invoke-direct {p0, v4}, Lcom/android/support/CkHomuraMenu;->dp(I)I

    move-result v4

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/support/CkHomuraMenu;->startimage:Landroid/widget/ImageView;

    .line 125
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    iget v0, p0, Lcom/android/support/CkHomuraMenu;->ICON_SIZE:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v2, v0, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 127
    iget-object v3, p0, Lcom/android/support/CkHomuraMenu;->startimage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 128
    iget-object v3, p0, Lcom/android/support/CkHomuraMenu;->startimage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 129
    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->startimage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 130
    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->startimage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/support/CkHomuraMenu;->makeMenuIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->startimage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x41200000    # 10.0f

    mul-float v3, v3, v4

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 133
    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->startimage:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/support/CkHomuraMenu;->onTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 134
    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->startimage:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda13;

    invoke-direct {v3, p0}, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda13;-><init>(Lcom/android/support/CkHomuraMenu;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 141
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v3, v6, :cond_142

    const-string v3, "\ud83c\udf41"

    goto :goto_144

    :cond_142
    const-string v3, "\ud83d\udd27"

    :goto_144
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget v3, p0, Lcom/android/support/CkHomuraMenu;->TEXT_COLOR:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v3, 0x41a00000    # 20.0f

    .line 144
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 145
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xb

    .line 146
    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 147
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    new-instance v3, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda14;

    invoke-direct {v3, p0}, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda14;-><init>(Lcom/android/support/CkHomuraMenu;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/support/CkHomuraMenu;->mSettings:Landroid/widget/LinearLayout;

    .line 165
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 166
    invoke-virtual {p0}, Lcom/android/support/CkHomuraMenu;->SettingsList()[Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/android/support/CkHomuraMenu;->mSettings:Landroid/widget/LinearLayout;

    invoke-direct {p0, v3, v7}, Lcom/android/support/CkHomuraMenu;->featureList([Ljava/lang/String;Landroid/widget/LinearLayout;)V

    .line 169
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v7, 0xa

    const/4 v8, 0x5

    .line 170
    invoke-virtual {v3, v7, v8, v7, v8}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    const/16 v9, 0x10

    .line 171
    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setVerticalGravity(I)V

    .line 173
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 174
    iget v10, p0, Lcom/android/support/CkHomuraMenu;->TEXT_COLOR:I

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v10, 0x41900000    # 18.0f

    .line 175
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 176
    const-string v10, "<b>PvZ2-CH</b>"

    invoke-static {v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v10, 0x11

    .line 177
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 178
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v11, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v12, 0xe

    .line 179
    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 180
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 184
    sget-object v12, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v12, -0x1

    .line 185
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 186
    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 187
    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 188
    const-string v12, "<b><marquee><p style=\"font-size:30\"><p style=\"color:green;\">PvZ</p> | PvZ-Mod</p> </marquee></b>"

    invoke-static {v12}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget v12, p0, Lcom/android/support/CkHomuraMenu;->TEXT_COLOR:I

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 191
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 192
    invoke-virtual {v11, v1, v1, v1, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 195
    new-instance v4, Landroid/widget/ScrollView;

    invoke-direct {v4, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/support/CkHomuraMenu;->scrollView:Landroid/widget/ScrollView;

    .line 196
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v8, p0, Lcom/android/support/CkHomuraMenu;->mExpanded:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v8, 0x3f800000    # 1.0f

    .line 197
    iput v8, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 198
    iget-object v8, p0, Lcom/android/support/CkHomuraMenu;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v8, v4}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    iget-object v4, p0, Lcom/android/support/CkHomuraMenu;->scrollView:Landroid/widget/ScrollView;

    iget v8, p0, Lcom/android/support/CkHomuraMenu;->MENU_FEATURE_BG_COLOR:I

    invoke-virtual {v4, v8}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 200
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/support/CkHomuraMenu;->mods:Landroid/widget/LinearLayout;

    .line 201
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 204
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x3

    .line 205
    invoke-virtual {v2, v7, v4, v7, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 206
    invoke-virtual {v2, v10}, Landroid/widget/RelativeLayout;->setVerticalGravity(I)V

    .line 209
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x9

    .line 210
    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 212
    new-instance v7, Landroid/widget/Button;

    invoke-direct {v7, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 213
    invoke-virtual {v7, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    invoke-virtual {v7, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 215
    const-string v4, "\u2715"

    invoke-virtual {v7, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget v8, p0, Lcom/android/support/CkHomuraMenu;->TEXT_COLOR:I

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setTextColor(I)V

    .line 217
    new-instance v8, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda15;

    invoke-direct {v8, p0}, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda15;-><init>(Lcom/android/support/CkHomuraMenu;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    new-instance v8, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda16;

    invoke-direct {v8, p0}, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda16;-><init>(Lcom/android/support/CkHomuraMenu;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 226
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 227
    invoke-virtual {v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 229
    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 230
    invoke-virtual {v5, v8}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    invoke-virtual {v5, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 232
    invoke-virtual {v5, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget p1, p0, Lcom/android/support/CkHomuraMenu;->TEXT_COLOR:I

    invoke-virtual {v5, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 234
    new-instance p1, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda17;

    invoke-direct {p1, p0}, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda17;-><init>(Lcom/android/support/CkHomuraMenu;)V

    invoke-virtual {v5, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu;->mRootContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/support/CkHomuraMenu;->mCollapsed:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 242
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu;->mRootContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/support/CkHomuraMenu;->mExpanded:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 243
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu;->mCollapsed:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/support/CkHomuraMenu;->startimage:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 244
    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 245
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 246
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu;->mExpanded:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 247
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu;->mExpanded:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 248
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu;->scrollView:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->mods:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 249
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu;->mExpanded:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 250
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 251
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 252
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu;->mExpanded:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private Button(Landroid/widget/LinearLayout;ILjava/lang/String;)V
    .registers 8

    .line 613
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 614
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x7

    const/4 v3, 0x5

    .line 615
    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 616
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 617
    iget v1, p0, Lcom/android/support/CkHomuraMenu;->TEXT_COLOR_2:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v1, 0x0

    .line 619
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 621
    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 622
    iget v1, p0, Lcom/android/support/CkHomuraMenu;->BTN_COLOR:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 623
    new-instance v1, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda2;-><init>(Lcom/android/support/CkHomuraMenu;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 635
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private ButtonLink(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 639
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 640
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x7

    const/4 v3, 0x5

    .line 641
    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 642
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    .line 644
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 646
    iget v1, p0, Lcom/android/support/CkHomuraMenu;->TEXT_COLOR_2:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 647
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 648
    iget p2, p0, Lcom/android/support/CkHomuraMenu;->BTN_COLOR:I

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 649
    new-instance p2, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0, p3}, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda6;-><init>(Lcom/android/support/CkHomuraMenu;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 655
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private ButtonOnOff(Landroid/widget/LinearLayout;ILjava/lang/String;Z)V
    .registers 11

    .line 659
    new-instance v5, Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v5, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 660
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x7

    const/4 v2, 0x5

    .line 661
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 662
    invoke-virtual {v5, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 663
    iget v0, p0, Lcom/android/support/CkHomuraMenu;->TEXT_COLOR_2:I

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v0, 0x0

    .line 665
    invoke-virtual {v5, v0}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 668
    const-string v1, "OnOff_"

    const-string v2, ""

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 669
    invoke-static {p3, p2, p4}, Lcom/android/support/Preferences;->loadPrefBool(Ljava/lang/String;IZ)Z

    move-result p3

    if-eqz p3, :cond_4d

    .line 671
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ": ON"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p3

    invoke-virtual {v5, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 672
    iget p3, p0, Lcom/android/support/CkHomuraMenu;->BtnON:I

    invoke-virtual {v5, p3}, Landroid/widget/Button;->setBackgroundColor(I)V

    const/4 v2, 0x0

    goto :goto_6e

    .line 675
    :cond_4d
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ": OFF"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p3

    invoke-virtual {v5, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 676
    iget p3, p0, Lcom/android/support/CkHomuraMenu;->BtnOFF:I

    invoke-virtual {v5, p3}, Landroid/widget/Button;->setBackgroundColor(I)V

    const/4 v0, 0x1

    const/4 v2, 0x1

    .line 680
    :goto_6e
    new-instance v0, Lcom/android/support/CkHomuraMenu$3;

    move-object v1, p0

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/support/CkHomuraMenu$3;-><init>(Lcom/android/support/CkHomuraMenu;ZLjava/lang/String;ILandroid/widget/Button;)V

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 697
    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private Category(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .registers 5

    .line 980
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 981
    iget v1, p0, Lcom/android/support/CkHomuraMenu;->CategoryBG:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 982
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0x11

    .line 983
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 984
    iget p2, p0, Lcom/android/support/CkHomuraMenu;->TEXT_COLOR_2:I

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p2, 0x0

    const/4 v1, 0x1

    .line 985
    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/4 p2, 0x0

    const/4 v1, 0x5

    .line 986
    invoke-virtual {v0, p2, v1, p2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 987
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private CheckBox(Landroid/widget/LinearLayout;ILjava/lang/String;Z)V
    .registers 8

    .line 871
    new-instance v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 872
    invoke-virtual {v0, p3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 873
    iget v1, p0, Lcom/android/support/CkHomuraMenu;->TEXT_COLOR_2:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 874
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1e

    .line 875
    iget v1, p0, Lcom/android/support/CkHomuraMenu;->CheckBoxColor:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 876
    :cond_1e
    invoke-static {p3, p2, p4}, Lcom/android/support/Preferences;->loadPrefBool(Ljava/lang/String;IZ)Z

    move-result p4

    invoke-virtual {v0, p4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 877
    new-instance p4, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda1;

    invoke-direct {p4, v0, p3, p2}, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda1;-><init>(Landroid/widget/CheckBox;Ljava/lang/String;I)V

    invoke-virtual {v0, p4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 884
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x1

    const/4 p4, -0x2

    invoke-direct {p2, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 p3, 0x11

    .line 885
    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 886
    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 887
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private Collapse(Landroid/widget/LinearLayout;Ljava/lang/String;Z)V
    .registers 15

    .line 928
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    const/4 v2, 0x5

    .line 929
    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 931
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 932
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x10

    .line 933
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVerticalGravity(I)V

    const/4 v4, 0x1

    .line 934
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 936
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v8, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 937
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setVerticalGravity(I)V

    .line 938
    invoke-virtual {v8, v1, v2, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 939
    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 940
    const-string v0, "#222D38"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/16 v0, 0x8

    .line 941
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 942
    iput-object v8, p0, Lcom/android/support/CkHomuraMenu;->mCollapse:Landroid/widget/LinearLayout;

    .line 944
    new-instance v9, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 945
    iget v0, p0, Lcom/android/support/CkHomuraMenu;->CategoryBG:I

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 946
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const-string v2, "\u25bd %s \u25bd"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x11

    .line 947
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 948
    iget v0, p0, Lcom/android/support/CkHomuraMenu;->TEXT_COLOR_2:I

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x0

    .line 949
    invoke-virtual {v9, v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/16 v0, 0x14

    .line 950
    invoke-virtual {v9, v1, v0, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    if-eqz p3, :cond_7c

    .line 953
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 954
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const-string v1, "\u25b3 %s \u25b3"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 957
    :cond_7c
    new-instance v5, Lcom/android/support/CkHomuraMenu$5;

    move-object v6, p0

    move-object v10, p2

    move v7, p3

    invoke-direct/range {v5 .. v10}, Lcom/android/support/CkHomuraMenu$5;-><init>(Lcom/android/support/CkHomuraMenu;ZLandroid/widget/LinearLayout;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 974
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 975
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 976
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private FormationCopy(Landroid/widget/LinearLayout;ILjava/lang/String;)V
    .registers 6

    .line 481
    new-instance p2, Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 482
    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 483
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p3, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x7

    const/4 v1, 0x5

    .line 484
    invoke-virtual {p3, v0, v1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 485
    invoke-virtual {p2, p3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 486
    iget p3, p0, Lcom/android/support/CkHomuraMenu;->TEXT_COLOR_2:I

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setTextColor(I)V

    const/4 p3, 0x0

    .line 488
    invoke-virtual {p2, p3}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 490
    iget p3, p0, Lcom/android/support/CkHomuraMenu;->BTN_COLOR:I

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 491
    new-instance p3, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda19;

    invoke-direct {p3, p0}, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda19;-><init>(Lcom/android/support/CkHomuraMenu;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 497
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private InputNum(Landroid/widget/LinearLayout;ILjava/lang/String;I)V
    .registers 15

    .line 739
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 740
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x7

    const/4 v3, 0x5

    .line 741
    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 743
    new-instance v7, Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v7, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 744
    invoke-static {p3, p2}, Lcom/android/support/Preferences;->loadPrefInt(Ljava/lang/String;I)I

    move-result v2

    .line 745
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": <font color=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/support/CkHomuraMenu;->NumberTxtColor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v2, :cond_3b

    const/4 v2, 0x1

    :cond_3b
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    .line 747
    invoke-virtual {v7, v2}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 749
    invoke-virtual {v7, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 750
    iget v1, p0, Lcom/android/support/CkHomuraMenu;->BTN_COLOR:I

    invoke-virtual {v7, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 751
    iget v1, p0, Lcom/android/support/CkHomuraMenu;->TEXT_COLOR_2:I

    invoke-virtual {v7, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 752
    new-instance v4, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda0;

    move-object v5, p0

    move v9, p2

    move-object v8, p3

    move v6, p4

    invoke-direct/range {v4 .. v9}, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda0;-><init>(Lcom/android/support/CkHomuraMenu;ILandroid/widget/Button;Ljava/lang/String;I)V

    invoke-virtual {v7, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 809
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 810
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private InputText(Landroid/widget/LinearLayout;ILjava/lang/String;)V
    .registers 10

    .line 814
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 815
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x7

    const/4 v3, 0x5

    .line 816
    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 818
    new-instance v2, Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 820
    invoke-static {p3, p2}, Lcom/android/support/Preferences;->loadPrefString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 821
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": <font color=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/support/CkHomuraMenu;->NumberTxtColor:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</font>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    .line 824
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 826
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 827
    iget v1, p0, Lcom/android/support/CkHomuraMenu;->BTN_COLOR:I

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 828
    iget v1, p0, Lcom/android/support/CkHomuraMenu;->TEXT_COLOR_2:I

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 829
    new-instance v1, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v2, p3, p2}, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda5;-><init>(Lcom/android/support/CkHomuraMenu;Landroid/widget/Button;Ljava/lang/String;I)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 866
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 867
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private OnceCheckBox(Landroid/widget/LinearLayout;ILjava/lang/String;)V
    .registers 8

    .line 501
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 502
    invoke-virtual {v0, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 503
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x7

    const/4 v3, 0x5

    .line 504
    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 505
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 506
    iget v1, p0, Lcom/android/support/CkHomuraMenu;->TEXT_COLOR_2:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v1, 0x0

    .line 508
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 510
    iget v1, p0, Lcom/android/support/CkHomuraMenu;->BTN_COLOR:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 511
    new-instance v1, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda20;

    invoke-direct {v1, p3, p2}, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda20;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 512
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private RadioButton(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;)V
    .registers 15

    .line 892
    new-instance v0, Ljava/util/LinkedList;

    const-string v1, ","

    invoke-virtual {p4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    invoke-direct {v0, p4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 894
    new-instance v3, Landroid/widget/TextView;

    iget-object p4, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p4, 0x1

    .line 895
    new-array v1, p4, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const-string v4, "%s:"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 896
    iget v1, p0, Lcom/android/support/CkHomuraMenu;->TEXT_COLOR_2:I

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 898
    new-instance v7, Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v7, v1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    const/16 v1, 0xa

    const/4 v4, 0x5

    .line 899
    invoke-virtual {v7, v1, v4, v1, v4}, Landroid/widget/RadioGroup;->setPadding(IIII)V

    .line 900
    invoke-virtual {v7, p4}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 901
    invoke-virtual {v7, v3}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    const/4 v9, 0x0

    .line 903
    :goto_3e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_8e

    .line 904
    new-instance v8, Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v8, v1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 905
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 906
    new-instance v1, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda18;

    move-object v2, p0

    move v6, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda18;-><init>(Lcom/android/support/CkHomuraMenu;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;ILandroid/widget/RadioGroup;Landroid/widget/RadioButton;)V

    .line 910
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 911
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v8, p2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const p2, -0x333334

    .line 912
    invoke-virtual {v8, p2}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 913
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x15

    if-lt p2, p3, :cond_83

    .line 914
    iget p2, v2, Lcom/android/support/CkHomuraMenu;->RadioColor:I

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {v8, p2}, Landroid/widget/RadioButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 915
    :cond_83
    invoke-virtual {v8, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 916
    invoke-virtual {v7, v8}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v9, v9, 0x1

    move-object p3, v4

    move p2, v6

    goto :goto_3e

    :cond_8e
    move-object v2, p0

    move v6, p2

    move-object v4, p3

    .line 919
    invoke-static {v4, v6}, Lcom/android/support/Preferences;->loadPrefInt(Ljava/lang/String;I)I

    move-result p2

    if-lez p2, :cond_d2

    .line 921
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, ": <font color=\'"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v1, v2, Lcom/android/support/CkHomuraMenu;->NumberTxtColor:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, "\'>"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    add-int/lit8 v1, p2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p3

    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 922
    invoke-virtual {v7, p2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    invoke-virtual {p2, p4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 924
    :cond_d2
    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private SeekBar(Landroid/widget/LinearLayout;ILjava/lang/String;II)V
    .registers 16

    .line 572
    invoke-static {p3, p2}, Lcom/android/support/Preferences;->loadPrefInt(Ljava/lang/String;I)I

    move-result v0

    .line 573
    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v6, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x5

    const/4 v5, 0x0

    const/16 v7, 0xa

    .line 574
    invoke-virtual {v6, v7, v2, v5, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v2, 0x1

    .line 575
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x11

    .line 576
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 578
    new-instance v5, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v5, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 579
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ": <font color=\'"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v8, p0, Lcom/android/support/CkHomuraMenu;->NumberTxtColor:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "\'>"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_41

    move v8, p4

    goto :goto_42

    :cond_41
    move v8, v0

    :goto_42
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    iget v2, p0, Lcom/android/support/CkHomuraMenu;->TEXT_COLOR_2:I

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 582
    new-instance v8, Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v8, v2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x19

    const/16 v9, 0x23

    .line 583
    invoke-virtual {v8, v2, v7, v9, v7}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 584
    invoke-virtual {v8, p5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 585
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-lt v2, v7, :cond_70

    .line 586
    invoke-virtual {v8, p4}, Landroid/widget/SeekBar;->setMin(I)V

    :cond_70
    if-nez v0, :cond_73

    move v0, p4

    .line 587
    :cond_73
    invoke-virtual {v8, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 589
    invoke-virtual {v8}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v7, p0, Lcom/android/support/CkHomuraMenu;->SeekBarColor:I

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v7, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 591
    invoke-virtual {v8}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v7, p0, Lcom/android/support/CkHomuraMenu;->SeekBarProgressColor:I

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v7, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 592
    new-instance v0, Lcom/android/support/CkHomuraMenu$2;

    move-object v1, p0

    move v4, p2

    move-object v3, p3

    move v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/support/CkHomuraMenu$2;-><init>(Lcom/android/support/CkHomuraMenu;ILjava/lang/String;ILandroid/widget/TextView;)V

    invoke-virtual {v8, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 606
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 607
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 609
    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private Spinner(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 702
    new-instance v0, Ljava/util/LinkedList;

    const-string v1, ","

    invoke-virtual {p4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    invoke-direct {v0, p4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 706
    new-instance p4, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {p4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 707
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x7

    const/4 v3, 0x2

    .line 708
    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/4 v2, 0x1

    .line 709
    invoke-virtual {p4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 710
    iget v3, p0, Lcom/android/support/CkHomuraMenu;->BTN_COLOR:I

    invoke-virtual {p4, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 711
    invoke-virtual {p4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 713
    new-instance v3, Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;I)V

    .line 714
    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, 0x60000

    .line 715
    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setDescendantFocusability(I)V

    .line 716
    invoke-virtual {v3}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 718
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    const v4, 0x1090009

    invoke-direct {v1, v2, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 719
    invoke-virtual {v1, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 721
    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 722
    invoke-static {p3, p2}, Lcom/android/support/Preferences;->loadPrefInt(Ljava/lang/String;I)I

    move-result p3

    invoke-virtual {v3, p3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 723
    new-instance p3, Lcom/android/support/CkHomuraMenu$4;

    invoke-direct {p3, p0, v3, p2}, Lcom/android/support/CkHomuraMenu$4;-><init>(Lcom/android/support/CkHomuraMenu;Landroid/widget/Spinner;I)V

    invoke-virtual {v3, p3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 734
    invoke-virtual {p4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 735
    invoke-virtual {p1, p4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private Switch(Landroid/widget/LinearLayout;ILjava/lang/String;Z)V
    .registers 12

    .line 533
    new-instance v0, Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 534
    new-instance v1, Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    new-array v3, v2, [I

    const/4 v4, 0x3

    new-array v4, v4, [[I

    const v5, -0x101009e

    filled-new-array {v5}, [I

    move-result-object v5

    aput-object v5, v4, v2

    const v5, 0x10100a0

    filled-new-array {v5}, [I

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    aput-object v3, v4, v5

    iget v3, p0, Lcom/android/support/CkHomuraMenu;->ToggleON:I

    iget v5, p0, Lcom/android/support/CkHomuraMenu;->ToggleOFF:I

    const v6, -0xffff01

    filled-new-array {v6, v3, v5}, [I

    move-result-object v3

    invoke-direct {v1, v4, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 547
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_52

    .line 549
    :try_start_39
    invoke-virtual {v0}, Landroid/widget/Switch;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 550
    invoke-virtual {v0}, Landroid/widget/Switch;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V
    :try_end_47
    .catch Ljava/lang/NullPointerException; {:try_start_39 .. :try_end_47} :catch_48

    goto :goto_52

    :catch_48
    move-exception v1

    .line 552
    const-string v3, "Mod_Menu"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_52
    :goto_52
    invoke-virtual {v0, p3}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    .line 556
    iget v1, p0, Lcom/android/support/CkHomuraMenu;->TEXT_COLOR_2:I

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setTextColor(I)V

    const/16 v1, 0xa

    const/4 v3, 0x5

    .line 557
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 558
    invoke-static {p3, p2, p4}, Lcom/android/support/Preferences;->loadPrefBool(Ljava/lang/String;IZ)Z

    move-result p4

    invoke-virtual {v0, p4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 559
    new-instance p4, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda4;

    invoke-direct {p4, p3, p2, v0}, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;ILandroid/widget/Switch;)V

    invoke-virtual {v0, p4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 568
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private TextView(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .registers 5

    .line 991
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 992
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 993
    iget p2, p0, Lcom/android/support/CkHomuraMenu;->TEXT_COLOR_2:I

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p2, 0xa

    const/4 v1, 0x5

    .line 994
    invoke-virtual {v0, p2, v1, p2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 995
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private WebTextView(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .registers 6

    .line 999
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 1000
    const-string v1, "text/html"

    const-string v2, "utf-8"

    invoke-virtual {v0, p2, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 1001
    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    const/4 v1, 0x5

    .line 1002
    invoke-virtual {v0, p2, v1, p2, v1}, Landroid/webkit/WebView;->setPadding(IIII)V

    .line 1003
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/support/CkHomuraMenu;)I
    .registers 1

    .line 64
    iget p0, p0, Lcom/android/support/CkHomuraMenu;->SCREEN_WIDTH:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/support/CkHomuraMenu;)I
    .registers 1

    .line 64
    iget p0, p0, Lcom/android/support/CkHomuraMenu;->SCREEN_HEIGHT:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/support/CkHomuraMenu;)Z
    .registers 1

    .line 64
    invoke-direct {p0}, Lcom/android/support/CkHomuraMenu;->isViewCollapsed()Z

    move-result p0

    return p0
.end method

.method private dp(I)I
    .registers 4

    int-to-float p1, p1

    .line 1012
    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private featureList([Ljava/lang/String;Landroid/widget/LinearLayout;)V
    .registers 18

    move-object/from16 v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 389
    :goto_5
    array-length v4, v0

    if-ge v2, v4, :cond_1ee

    .line 392
    aget-object v4, v0, v2

    .line 393
    const-string v5, "_True"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, ""

    const/4 v8, 0x1

    if-eqz v6, :cond_1b

    .line 395
    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v5, 0x0

    .line 399
    :goto_1c
    const-string v6, "CollapseAdd_"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 401
    iget-object v9, p0, Lcom/android/support/CkHomuraMenu;->mCollapse:Landroid/widget/LinearLayout;

    .line 402
    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v10, v9

    goto :goto_2e

    :cond_2c
    move-object/from16 v10, p2

    .line 404
    :goto_2e
    const-string v6, "_"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 407
    aget-object v11, v9, v1

    invoke-static {v11}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4b

    aget-object v11, v9, v1

    const-string v12, "-\\d*"

    invoke-virtual {v11, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_47

    goto :goto_4b

    :cond_47
    sub-int v7, v2, v3

    move v11, v7

    goto :goto_6a

    .line 408
    :cond_4b
    :goto_4b
    aget-object v11, v9, v1

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 409
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v9, v1

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    .line 415
    :goto_6a
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 416
    aget-object v6, v4, v1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v9, 0x3

    const/4 v12, 0x2

    const/4 v13, -0x1

    sparse-switch v7, :sswitch_data_1f0

    goto/16 :goto_146

    :sswitch_7f
    const-string v7, "Button"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_89

    goto/16 :goto_146

    :cond_89
    const/16 v13, 0xf

    goto/16 :goto_146

    :sswitch_8d
    const-string v7, "CheckBox"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_97

    goto/16 :goto_146

    :cond_97
    const/16 v13, 0xe

    goto/16 :goto_146

    :sswitch_9b
    const-string v7, "RadioButton"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a5

    goto/16 :goto_146

    :cond_a5
    const/16 v13, 0xd

    goto/16 :goto_146

    :sswitch_a9
    const-string v7, "RichWebView"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b3

    goto/16 :goto_146

    :cond_b3
    const/16 v13, 0xc

    goto/16 :goto_146

    :sswitch_b7
    const-string v7, "Category"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c1

    goto/16 :goto_146

    :cond_c1
    const/16 v13, 0xb

    goto/16 :goto_146

    :sswitch_c5
    const-string v7, "RichTextView"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_cf

    goto/16 :goto_146

    :cond_cf
    const/16 v13, 0xa

    goto/16 :goto_146

    :sswitch_d3
    const-string v7, "ButtonOnOff"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_dd

    goto/16 :goto_146

    :cond_dd
    const/16 v13, 0x9

    goto/16 :goto_146

    :sswitch_e1
    const-string v7, "Spinner"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_eb

    goto/16 :goto_146

    :cond_eb
    const/16 v13, 0x8

    goto/16 :goto_146

    :sswitch_ef
    const-string v7, "Collapse"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f8

    goto :goto_146

    :cond_f8
    const/4 v13, 0x7

    goto :goto_146

    :sswitch_fa
    const-string v7, "InputText"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_103

    goto :goto_146

    :cond_103
    const/4 v13, 0x6

    goto :goto_146

    :sswitch_105
    const-string v7, "SeekBar"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10e

    goto :goto_146

    :cond_10e
    const/4 v13, 0x5

    goto :goto_146

    :sswitch_110
    const-string v7, "InputValue"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_119

    goto :goto_146

    :cond_119
    const/4 v13, 0x4

    goto :goto_146

    :sswitch_11b
    const-string v7, "OnceCheckBox"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_124

    goto :goto_146

    :cond_124
    const/4 v13, 0x3

    goto :goto_146

    :sswitch_126
    const-string v7, "Toggle"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12f

    goto :goto_146

    :cond_12f
    const/4 v13, 0x2

    goto :goto_146

    :sswitch_131
    const-string v7, "FormationCopy"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13a

    goto :goto_146

    :cond_13a
    const/4 v13, 0x1

    goto :goto_146

    :sswitch_13c
    const-string v7, "ButtonLink"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_145

    goto :goto_146

    :cond_145
    const/4 v13, 0x0

    :goto_146
    packed-switch v13, :pswitch_data_232

    goto/16 :goto_1ea

    .line 424
    :pswitch_14b
    aget-object v4, v4, v8

    invoke-direct {p0, v10, v11, v4}, Lcom/android/support/CkHomuraMenu;->Button(Landroid/widget/LinearLayout;ILjava/lang/String;)V

    goto/16 :goto_1ea

    .line 443
    :pswitch_152
    aget-object v4, v4, v8

    invoke-direct {p0, v10, v11, v4, v5}, Lcom/android/support/CkHomuraMenu;->CheckBox(Landroid/widget/LinearLayout;ILjava/lang/String;Z)V

    goto/16 :goto_1ea

    .line 446
    :pswitch_159
    aget-object v5, v4, v8

    aget-object v4, v4, v12

    invoke-direct {p0, v10, v11, v5, v4}, Lcom/android/support/CkHomuraMenu;->RadioButton(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1ea

    :pswitch_162
    add-int/lit8 v3, v3, 0x1

    .line 466
    aget-object v4, v4, v8

    invoke-direct {p0, v10, v4}, Lcom/android/support/CkHomuraMenu;->WebTextView(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    goto/16 :goto_1ea

    :pswitch_16b
    add-int/lit8 v3, v3, 0x1

    .line 458
    aget-object v4, v4, v8

    invoke-direct {p0, v10, v4}, Lcom/android/support/CkHomuraMenu;->Category(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    goto/16 :goto_1ea

    :pswitch_174
    add-int/lit8 v3, v3, 0x1

    .line 462
    aget-object v4, v4, v8

    invoke-direct {p0, v10, v4}, Lcom/android/support/CkHomuraMenu;->TextView(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    goto/16 :goto_1ea

    .line 427
    :pswitch_17d
    aget-object v4, v4, v8

    invoke-direct {p0, v10, v11, v4, v5}, Lcom/android/support/CkHomuraMenu;->ButtonOnOff(Landroid/widget/LinearLayout;ILjava/lang/String;Z)V

    goto :goto_1ea

    .line 430
    :pswitch_183
    aget-object v5, v4, v8

    invoke-direct {p0, v10, v5}, Lcom/android/support/CkHomuraMenu;->TextView(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 431
    aget-object v5, v4, v8

    aget-object v4, v4, v12

    invoke-direct {p0, v10, v11, v5, v4}, Lcom/android/support/CkHomuraMenu;->Spinner(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1ea

    .line 449
    :pswitch_190
    aget-object v4, v4, v8

    invoke-direct {p0, v10, v4, v5}, Lcom/android/support/CkHomuraMenu;->Collapse(Landroid/widget/LinearLayout;Ljava/lang/String;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1ea

    .line 434
    :pswitch_198
    aget-object v4, v4, v8

    invoke-direct {p0, v10, v11, v4}, Lcom/android/support/CkHomuraMenu;->InputText(Landroid/widget/LinearLayout;ILjava/lang/String;)V

    goto :goto_1ea

    :pswitch_19e
    const/4 v5, 0x2

    .line 421
    aget-object v12, v4, v8

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    aget-object v4, v4, v9

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object v9, p0

    invoke-direct/range {v9 .. v14}, Lcom/android/support/CkHomuraMenu;->SeekBar(Landroid/widget/LinearLayout;ILjava/lang/String;II)V

    goto :goto_1ea

    :pswitch_1b2
    const/4 v5, 0x2

    .line 437
    array-length v7, v4

    if-ne v7, v9, :cond_1c1

    .line 438
    aget-object v7, v4, v5

    aget-object v9, v4, v8

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {p0, v10, v11, v7, v9}, Lcom/android/support/CkHomuraMenu;->InputNum(Landroid/widget/LinearLayout;ILjava/lang/String;I)V

    .line 439
    :cond_1c1
    array-length v7, v4

    if-ne v7, v5, :cond_1ea

    .line 440
    aget-object v4, v4, v8

    invoke-direct {p0, v10, v11, v4, v1}, Lcom/android/support/CkHomuraMenu;->InputNum(Landroid/widget/LinearLayout;ILjava/lang/String;I)V

    goto :goto_1ea

    :pswitch_1ca
    add-int/lit8 v3, v3, 0x1

    .line 470
    aget-object v4, v4, v8

    invoke-direct {p0, v10, v11, v4}, Lcom/android/support/CkHomuraMenu;->OnceCheckBox(Landroid/widget/LinearLayout;ILjava/lang/String;)V

    goto :goto_1ea

    .line 418
    :pswitch_1d2
    aget-object v4, v4, v8

    invoke-direct {p0, v10, v11, v4, v5}, Lcom/android/support/CkHomuraMenu;->Switch(Landroid/widget/LinearLayout;ILjava/lang/String;Z)V

    goto :goto_1ea

    :pswitch_1d8
    add-int/lit8 v3, v3, 0x1

    .line 474
    aget-object v4, v4, v8

    invoke-direct {p0, v10, v11, v4}, Lcom/android/support/CkHomuraMenu;->FormationCopy(Landroid/widget/LinearLayout;ILjava/lang/String;)V

    goto :goto_1ea

    :pswitch_1e0
    const/4 v5, 0x2

    add-int/lit8 v3, v3, 0x1

    .line 454
    aget-object v7, v4, v8

    aget-object v4, v4, v5

    invoke-direct {p0, v10, v7, v4}, Lcom/android/support/CkHomuraMenu;->ButtonLink(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1ea
    :goto_1ea
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    :cond_1ee
    return-void

    nop

    :sswitch_data_1f0
    .sparse-switch
        -0x73d2c194 -> :sswitch_13c
        -0x6b0be45a -> :sswitch_131
        -0x6a5c588c -> :sswitch_126
        -0x4f0d969c -> :sswitch_11b
        -0x370e8c19 -> :sswitch_110
        -0x274065a5 -> :sswitch_105
        -0x22cfc409 -> :sswitch_fa
        -0x21d27833 -> :sswitch_ef
        -0x1440b607 -> :sswitch_e1
        -0x6595922 -> :sswitch_d3
        0x4f11a8e -> :sswitch_c5
        0x6dd211e -> :sswitch_b7
        0x1977177d -> :sswitch_a9
        0x2e46a6ed -> :sswitch_9b
        0x5f7507c3 -> :sswitch_8d
        0x77471352 -> :sswitch_7f
    .end sparse-switch

    :pswitch_data_232
    .packed-switch 0x0
        :pswitch_1e0
        :pswitch_1d8
        :pswitch_1d2
        :pswitch_1ca
        :pswitch_1b2
        :pswitch_19e
        :pswitch_198
        :pswitch_190
        :pswitch_183
        :pswitch_17d
        :pswitch_174
        :pswitch_16b
        :pswitch_162
        :pswitch_159
        :pswitch_152
        :pswitch_14b
    .end packed-switch
.end method

.method private isViewCollapsed()Z
    .registers 2

    .line 1007
    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->rootFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->mCollapsed:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    return v0

    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$CheckBox$19(Landroid/widget/CheckBox;Ljava/lang/String;ILandroid/widget/CompoundButton;Z)V
    .registers 5

    .line 878
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_a

    .line 879
    invoke-static {p1, p2, p4}, Lcom/android/support/Preferences;->changeFeatureBool(Ljava/lang/String;IZ)V

    return-void

    .line 881
    :cond_a
    invoke-static {p1, p2, p4}, Lcom/android/support/Preferences;->changeFeatureBool(Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic lambda$OnceCheckBox$6(Ljava/lang/String;ILandroid/view/View;)V
    .registers 3

    const/4 p2, 0x1

    .line 511
    invoke-static {p0, p1, p2}, Lcom/android/support/Preferences;->changeFeatureBool(Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic lambda$Switch$7(Ljava/lang/String;ILandroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V
    .registers 5

    .line 523
    invoke-static {p0, p1, p4}, Lcom/android/support/Preferences;->changeFeatureBool(Ljava/lang/String;IZ)V

    const/4 p0, -0x1

    if-ne p1, p0, :cond_1e

    .line 525
    invoke-virtual {p2}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/support/Preferences;->with(Landroid/content/Context;)Lcom/android/support/Preferences;

    move-result-object p1

    invoke-virtual {p1, p0, p4}, Lcom/android/support/Preferences;->writeBoolean(IZ)V

    if-nez p4, :cond_1e

    .line 527
    invoke-virtual {p2}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/support/Preferences;->with(Landroid/content/Context;)Lcom/android/support/Preferences;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/support/Preferences;->clear()V

    :cond_1e
    return-void
.end method

.method static synthetic lambda$Switch$8(Ljava/lang/String;ILandroid/widget/Switch;Landroid/widget/CompoundButton;Z)V
    .registers 5

    .line 560
    invoke-static {p0, p1, p4}, Lcom/android/support/Preferences;->changeFeatureBool(Ljava/lang/String;IZ)V

    const/4 p0, -0x1

    if-ne p1, p0, :cond_1e

    .line 562
    invoke-virtual {p2}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/support/Preferences;->with(Landroid/content/Context;)Lcom/android/support/Preferences;

    move-result-object p1

    invoke-virtual {p1, p0, p4}, Lcom/android/support/Preferences;->writeBoolean(IZ)V

    if-nez p4, :cond_1e

    .line 564
    invoke-virtual {p2}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/support/Preferences;->with(Landroid/content/Context;)Lcom/android/support/Preferences;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/support/Preferences;->clear()V

    :cond_1e
    return-void
.end method

.method static makeMenuIcon()Landroid/graphics/drawable/Drawable;
    .registers 19

    .line 309
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x42340000    # 45.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 310
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 311
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 312
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 314
    const-string v1, "#2F3D4C"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v0, v1

    .line 315
    invoke-virtual {v3, v1, v1, v1, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 317
    const-string v4, "#FFB300"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setColor(I)V

    const v4, 0x3e99999a    # 0.3f

    mul-float v4, v4, v0

    .line 318
    invoke-virtual {v3, v1, v1, v4, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 320
    const-string v4, "#82CAFD"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setColor(I)V

    const v4, 0x3d75c28f    # 0.06f

    mul-float v4, v4, v0

    .line 321
    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 322
    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/4 v4, 0x0

    const/4 v9, 0x0

    :goto_5a
    const/16 v4, 0x8

    if-ge v9, v4, :cond_c2

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v6, v9

    .line 324
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v4

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    div-double/2addr v6, v4

    const v4, 0x3ec28f5c    # 0.38f

    mul-float v4, v4, v0

    const v5, 0x3eeb851f    # 0.46f

    mul-float v5, v5, v0

    float-to-double v10, v1

    float-to-double v12, v4

    .line 327
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v14, v10

    double-to-float v4, v14

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v14

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v12, v10

    double-to-float v12, v12

    float-to-double v13, v5

    .line 328
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v15, v15, v13

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move/from16 v17, v0

    move/from16 v18, v1

    add-double v0, v10, v15

    double-to-float v0, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v5

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v10, v13

    double-to-float v7, v10

    move v6, v0

    move v5, v12

    .line 327
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v9, v9, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    goto :goto_5a

    .line 330
    :cond_c2
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private onTouchListener()Landroid/view/View$OnTouchListener;
    .registers 4

    .line 334
    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    const-string v1, "data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 335
    new-instance v1, Lcom/android/support/CkHomuraMenu$1;

    invoke-direct {v1, p0, v0}, Lcom/android/support/CkHomuraMenu$1;-><init>(Lcom/android/support/CkHomuraMenu;Landroid/content/SharedPreferences;)V

    return-object v1
.end method


# virtual methods
.method native GetCurrentFormation()Ljava/lang/String;
.end method

.method native GetFeatureList()[Ljava/lang/String;
.end method

.method GetWidthHeight()V
    .registers 3

    .line 298
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 300
    iget-object v1, p0, Lcom/android/support/CkHomuraMenu;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 304
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/android/support/CkHomuraMenu;->SCREEN_WIDTH:I

    .line 305
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/android/support/CkHomuraMenu;->SCREEN_HEIGHT:I

    return-void
.end method

.method public SetWindowManagerActivity()V
    .registers 11

    .line 269
    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    const-string v1, "data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 272
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_14

    const/16 v1, 0x7f6

    const/16 v7, 0x7f6

    goto :goto_18

    :cond_14
    const/16 v1, 0x7d2

    const/16 v7, 0x7d2

    .line 278
    :goto_18
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const-string v1, "menuX"

    iget v3, p0, Lcom/android/support/CkHomuraMenu;->POS_X:I

    .line 281
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string v1, "menuY"

    iget v3, p0, Lcom/android/support/CkHomuraMenu;->POS_Y:I

    .line 282
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    const v8, 0x800108

    const/4 v9, -0x2

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct/range {v2 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v2, p0, Lcom/android/support/CkHomuraMenu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    .line 289
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_40

    .line 290
    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 291
    :cond_40
    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 292
    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/support/CkHomuraMenu;->mWindowManager:Landroid/view/WindowManager;

    .line 293
    invoke-virtual {p0}, Lcom/android/support/CkHomuraMenu;->GetWidthHeight()V

    .line 294
    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/support/CkHomuraMenu;->rootFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/support/CkHomuraMenu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method native SettingsList()[Ljava/lang/String;
.end method

.method public ShowMenu()V
    .registers 3

    .line 263
    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->rootFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/support/CkHomuraMenu;->mRootContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 264
    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->mods:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 265
    invoke-virtual {p0}, Lcom/android/support/CkHomuraMenu;->GetFeatureList()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/support/CkHomuraMenu;->mods:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, Lcom/android/support/CkHomuraMenu;->featureList([Ljava/lang/String;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method synthetic lambda$Button$9$com-android-support-CkHomuraMenu(ILjava/lang/String;Landroid/view/View;)V
    .registers 5

    .line 0
    const/4 p3, -0x6

    if-eq p1, p3, :cond_4

    goto :goto_18

    .line 627
    :cond_4
    iget-boolean p3, p0, Lcom/android/support/CkHomuraMenu;->settingsOpen:Z

    xor-int/lit8 p3, p3, 0x1

    iput-boolean p3, p0, Lcom/android/support/CkHomuraMenu;->settingsOpen:Z

    .line 628
    iget-object p3, p0, Lcom/android/support/CkHomuraMenu;->scrollView:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->mSettings:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v0}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 629
    iget-object p3, p0, Lcom/android/support/CkHomuraMenu;->scrollView:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->mods:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    :goto_18
    const/4 p3, 0x0

    .line 632
    invoke-static {p2, p1, p3}, Lcom/android/support/Preferences;->changeFeatureInt(Ljava/lang/String;II)V

    return-void
.end method

.method synthetic lambda$ButtonLink$10$com-android-support-CkHomuraMenu(Ljava/lang/String;Landroid/view/View;)V
    .registers 4

    .line 650
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 651
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 652
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 653
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$FormationCopy$5$com-android-support-CkHomuraMenu(Landroid/view/View;)V
    .registers 5

    .line 492
    invoke-virtual {p0}, Lcom/android/support/CkHomuraMenu;->GetCurrentFormation()Ljava/lang/String;

    move-result-object p1

    .line 493
    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    const-string v1, "Copiado al portapapeles"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 494
    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const-string v1, "c"

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method

.method synthetic lambda$InputNum$11$com-android-support-CkHomuraMenu(Landroid/view/View;Z)V
    .registers 4

    .line 763
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x1

    if-eqz p2, :cond_12

    const/4 p2, 0x2

    .line 765
    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    return-void

    :cond_12
    const/4 p2, 0x0

    .line 767
    invoke-virtual {p1, v0, p2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    return-void
.end method

.method synthetic lambda$InputNum$12$com-android-support-CkHomuraMenu(Landroid/widget/EditText;ILandroid/widget/Button;Ljava/lang/String;ILandroid/content/DialogInterface;I)V
    .registers 8

    .line 782
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-eqz p6, :cond_11

    const-string p6, "0"

    goto :goto_19

    :cond_11
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p6

    :goto_19
    invoke-static {p6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p6
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_1d} :catch_24

    if-eqz p2, :cond_22

    if-lt p6, p2, :cond_22

    goto :goto_2b

    :cond_22
    move p2, p6

    goto :goto_2b

    :catch_24
    nop

    if-eqz p2, :cond_28

    goto :goto_2b

    :cond_28
    const p2, 0x7ffffff8

    .line 792
    :goto_2b
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    const-string p7, ": <font color=\'"

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    iget-object p7, p0, Lcom/android/support/CkHomuraMenu;->NumberTxtColor:Ljava/lang/String;

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    const-string p7, "\'>"

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p6

    const-string p7, "</font>"

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p6

    invoke-virtual {p3, p6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 793
    invoke-static {p4, p5, p2}, Lcom/android/support/Preferences;->changeFeatureInt(Ljava/lang/String;II)V

    const/4 p2, 0x0

    .line 795
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setFocusable(Z)V

    return-void
.end method

.method synthetic lambda$InputNum$13$com-android-support-CkHomuraMenu(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 800
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 801
    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    return-void
.end method

.method synthetic lambda$InputNum$14$com-android-support-CkHomuraMenu(ILandroid/widget/Button;Ljava/lang/String;ILandroid/view/View;)V
    .registers 14

    .line 753
    new-instance p5, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {p5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 754
    new-instance v3, Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_22

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Max value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_22
    const/4 v0, 0x2

    .line 757
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 758
    const-string v0, "0123456789-"

    invoke-static {v0}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    const/4 v0, 0x1

    .line 759
    new-array v1, v0, [Landroid/text/InputFilter;

    .line 760
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0xa

    invoke-direct {v2, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v4, 0x0

    aput-object v2, v1, v4

    .line 761
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 762
    new-instance v1, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda7;-><init>(Lcom/android/support/CkHomuraMenu;)V

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 770
    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 772
    const-string v1, "Input number"

    invoke-virtual {p5, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 773
    invoke-virtual {p5, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 774
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 775
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 776
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 777
    invoke-virtual {p5, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 779
    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda8;

    move-object v2, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda8;-><init>(Lcom/android/support/CkHomuraMenu;Landroid/widget/EditText;ILandroid/widget/Button;Ljava/lang/String;I)V

    invoke-virtual {p5, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 798
    iget-object p1, v2, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    const/high16 p2, 0x1040000

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda9;

    invoke-direct {p2, p0}, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda9;-><init>(Lcom/android/support/CkHomuraMenu;)V

    invoke-virtual {p5, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 805
    invoke-virtual {p5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method synthetic lambda$InputText$15$com-android-support-CkHomuraMenu(Landroid/view/View;Z)V
    .registers 4

    .line 834
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x1

    if-eqz p2, :cond_12

    const/4 p2, 0x2

    .line 836
    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    return-void

    :cond_12
    const/4 p2, 0x0

    .line 838
    invoke-virtual {p1, v0, p2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    return-void
.end method

.method synthetic lambda$InputText$16$com-android-support-CkHomuraMenu(Landroid/widget/EditText;Landroid/widget/Button;Ljava/lang/String;ILandroid/content/DialogInterface;I)V
    .registers 8

    .line 851
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    .line 852
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    const-string v0, ": <font color=\'"

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->NumberTxtColor:Ljava/lang/String;

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    const-string v0, "\'>"

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    const-string v0, "</font>"

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p6

    invoke-virtual {p2, p6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 853
    invoke-static {p3, p4, p5}, Lcom/android/support/Preferences;->changeFeatureString(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p2, 0x0

    .line 854
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setFocusable(Z)V

    return-void
.end method

.method synthetic lambda$InputText$17$com-android-support-CkHomuraMenu(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 859
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 860
    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    return-void
.end method

.method synthetic lambda$InputText$18$com-android-support-CkHomuraMenu(Landroid/widget/Button;Ljava/lang/String;ILandroid/view/View;)V
    .registers 12

    .line 830
    new-instance p4, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {p4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 832
    new-instance v3, Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 833
    new-instance v0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda10;-><init>(Lcom/android/support/CkHomuraMenu;)V

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 841
    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 843
    const-string v0, "Input text"

    invoke-virtual {p4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 844
    invoke-virtual {p4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 845
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 846
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 847
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 848
    invoke-virtual {p4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 850
    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda11;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda11;-><init>(Lcom/android/support/CkHomuraMenu;Landroid/widget/EditText;Landroid/widget/Button;Ljava/lang/String;I)V

    invoke-virtual {p4, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 857
    iget-object p1, v2, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    const/high16 p2, 0x1040000

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda12;

    invoke-direct {p2, p0}, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda12;-><init>(Lcom/android/support/CkHomuraMenu;)V

    invoke-virtual {p4, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 863
    invoke-virtual {p4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method synthetic lambda$RadioButton$20$com-android-support-CkHomuraMenu(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;ILandroid/widget/RadioGroup;Landroid/widget/RadioButton;Landroid/view/View;)V
    .registers 9

    .line 907
    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p7

    const-string v0, ": <font color=\'"

    invoke-virtual {p7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p7

    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->NumberTxtColor:Ljava/lang/String;

    invoke-virtual {p7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p7

    const-string v0, "\'>"

    invoke-virtual {p7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p7

    invoke-virtual {p7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 908
    invoke-virtual {p5, p6}, Landroid/widget/RadioGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-static {p2, p4, p1}, Lcom/android/support/Preferences;->changeFeatureInt(Ljava/lang/String;II)V

    return-void
.end method

.method synthetic lambda$new$0$com-android-support-CkHomuraMenu(Landroid/view/View;)V
    .registers 3

    .line 135
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu;->mCollapsed:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 136
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu;->mExpanded:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method synthetic lambda$new$1$com-android-support-CkHomuraMenu(Landroid/view/View;)V
    .registers 3

    .line 150
    :try_start_0
    iget-boolean p1, p0, Lcom/android/support/CkHomuraMenu;->settingsOpen:Z

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/android/support/CkHomuraMenu;->settingsOpen:Z

    if-nez p1, :cond_1d

    .line 152
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu;->scrollView:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->mods:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 153
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu;->scrollView:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->mSettings:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 154
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu;->scrollView:Landroid/widget/ScrollView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/widget/ScrollView;->scrollTo(II)V

    return-void

    .line 156
    :cond_1d
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu;->scrollView:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->mSettings:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 157
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu;->scrollView:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->mods:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V
    :try_end_2b
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_2b} :catch_2b

    :catch_2b
    return-void
.end method

.method synthetic lambda$new$2$com-android-support-CkHomuraMenu(Landroid/view/View;)V
    .registers 4

    .line 217
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    const-string v0, "Mant\u00e9n pulsado para cerrar el men\u00fa"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$new$3$com-android-support-CkHomuraMenu(Landroid/view/View;)Z
    .registers 4

    .line 219
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    const-string v0, "Men\u00fa de trucos cerrado"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 220
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu;->rootFrame:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->mRootContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 221
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->rootFrame:Landroid/widget/FrameLayout;

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$new$4$com-android-support-CkHomuraMenu(Landroid/view/View;)V
    .registers 3

    .line 236
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu;->mCollapsed:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 237
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu;->mExpanded:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 1016
    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->rootFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_9

    .line 1017
    iget-object v1, p0, Lcom/android/support/CkHomuraMenu;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_9
    return-void
.end method
