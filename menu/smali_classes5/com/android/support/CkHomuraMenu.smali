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
    .registers 16

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
    const-string v2, "#00ffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/support/CkHomuraMenu;->BtnON:I

    .line 84
    const-string v2, "#7f0000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/support/CkHomuraMenu;->BtnOFF:I

    .line 85
    const-string v2, "#2F3D4C"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/support/CkHomuraMenu;->CategoryBG:I

    .line 86
    const-string v2, "#80CBC4"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/support/CkHomuraMenu;->SeekBarColor:I

    .line 87
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/support/CkHomuraMenu;->SeekBarProgressColor:I

    .line 88
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/support/CkHomuraMenu;->CheckBoxColor:I

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

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 111
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/support/CkHomuraMenu;->mRootContainer:Landroid/widget/RelativeLayout;

    .line 112
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/support/CkHomuraMenu;->mCollapsed:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    .line 113
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 116
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/support/CkHomuraMenu;->mExpanded:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    .line 117
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->mExpanded:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/android/support/CkHomuraMenu;->MENU_BG_COLOR:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 119
    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->mExpanded:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 121
    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->mExpanded:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/android/support/CkHomuraMenu;->MENU_WIDTH:I

    invoke-direct {p0, v5}, Lcom/android/support/CkHomuraMenu;->dp(I)I

    move-result v5

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/support/CkHomuraMenu;->startimage:Landroid/widget/ImageView;

    .line 125
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    iget v0, p0, Lcom/android/support/CkHomuraMenu;->ICON_SIZE:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v3, v0, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 127
    iget-object v4, p0, Lcom/android/support/CkHomuraMenu;->startimage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 128
    iget-object v4, p0, Lcom/android/support/CkHomuraMenu;->startimage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 129
    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->startimage:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 130
    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->startimage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/support/CkHomuraMenu;->makeMenuIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->startimage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x41200000    # 10.0f

    mul-float v4, v4, v5

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 133
    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->startimage:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/support/CkHomuraMenu;->onTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 134
    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->startimage:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda13;

    invoke-direct {v4, p0}, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda13;-><init>(Lcom/android/support/CkHomuraMenu;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 141
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v4, v7, :cond_142

    const-string v4, "\ud83c\udf41"

    goto :goto_144

    :cond_142
    const-string v4, "\ud83d\udd27"

    :goto_144
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget v4, p0, Lcom/android/support/CkHomuraMenu;->TEXT_COLOR:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v4, 0x41a00000    # 20.0f

    .line 144
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 145
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xb

    .line 146
    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 147
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    new-instance v4, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda14;

    invoke-direct {v4, p0}, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda14;-><init>(Lcom/android/support/CkHomuraMenu;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/support/CkHomuraMenu;->mSettings:Landroid/widget/LinearLayout;

    .line 165
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 166
    invoke-virtual {p0}, Lcom/android/support/CkHomuraMenu;->SettingsList()[Ljava/lang/String;

    move-result-object v4

    iget-object v8, p0, Lcom/android/support/CkHomuraMenu;->mSettings:Landroid/widget/LinearLayout;

    invoke-direct {p0, v4, v8}, Lcom/android/support/CkHomuraMenu;->featureList([Ljava/lang/String;Landroid/widget/LinearLayout;)V

    .line 169
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v8, 0xa

    const/4 v9, 0x5

    .line 170
    invoke-virtual {v4, v8, v9, v8, v9}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    const/16 v10, 0x10

    .line 171
    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout;->setVerticalGravity(I)V

    .line 173
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 174
    iget v11, p0, Lcom/android/support/CkHomuraMenu;->TEXT_COLOR:I

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v11, 0x41900000    # 18.0f

    .line 175
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 176
    const-string v11, "<b>PvZ2-CH</b>"

    invoke-static {v11}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v11, 0x11

    .line 177
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 178
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v12, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v13, 0xe

    .line 179
    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 180
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 184
    sget-object v13, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v13, -0x1

    .line 185
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 186
    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 187
    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 188
    const-string v13, "<b><marquee><p style=\"font-size:30\"><p style=\"color:green;\">PvZ</p> | PvZ-Mod</p> </marquee></b>"

    invoke-static {v13}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget v13, p0, Lcom/android/support/CkHomuraMenu;->TEXT_COLOR:I

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 191
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 192
    invoke-virtual {v12, v2, v2, v2, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 195
    new-instance v5, Landroid/widget/ScrollView;

    invoke-direct {v5, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/support/CkHomuraMenu;->scrollView:Landroid/widget/ScrollView;

    .line 196
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v9, p0, Lcom/android/support/CkHomuraMenu;->mExpanded:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-direct {v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v9, 0x3f800000    # 1.0f

    .line 197
    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 198
    iget-object v9, p0, Lcom/android/support/CkHomuraMenu;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v9, v5}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    iget-object v5, p0, Lcom/android/support/CkHomuraMenu;->scrollView:Landroid/widget/ScrollView;

    iget v9, p0, Lcom/android/support/CkHomuraMenu;->MENU_FEATURE_BG_COLOR:I

    invoke-virtual {v5, v9}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 200
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/support/CkHomuraMenu;->mods:Landroid/widget/LinearLayout;

    .line 201
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 204
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x3

    .line 205
    invoke-virtual {v3, v8, v5, v8, v5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 206
    invoke-virtual {v3, v11}, Landroid/widget/RelativeLayout;->setVerticalGravity(I)V

    .line 209
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0x9

    .line 210
    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 212
    new-instance v8, Landroid/widget/Button;

    invoke-direct {v8, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 213
    invoke-virtual {v8, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    invoke-virtual {v8, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 215
    const-string v5, "\u2715"

    invoke-virtual {v8, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 216
    invoke-virtual {v8, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 217
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v8, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 218
    new-instance v1, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda15;-><init>(Lcom/android/support/CkHomuraMenu;)V

    invoke-virtual {v8, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    new-instance v1, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda16;-><init>(Lcom/android/support/CkHomuraMenu;)V

    invoke-virtual {v8, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 227
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 228
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 230
    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 231
    invoke-virtual {v5, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    invoke-virtual {v5, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 233
    const-string p1, "\u2212"

    invoke-virtual {v5, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget p1, p0, Lcom/android/support/CkHomuraMenu;->TEXT_COLOR:I

    invoke-virtual {v5, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 235
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, p1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 236
    new-instance p1, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda17;

    invoke-direct {p1, p0}, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda17;-><init>(Lcom/android/support/CkHomuraMenu;)V

    invoke-virtual {v5, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu;->mRootContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/support/CkHomuraMenu;->mCollapsed:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 244
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu;->mRootContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/support/CkHomuraMenu;->mExpanded:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 245
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu;->mCollapsed:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/support/CkHomuraMenu;->startimage:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 246
    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 247
    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 248
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu;->mExpanded:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 249
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu;->mExpanded:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 250
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu;->scrollView:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->mods:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 251
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu;->mExpanded:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 252
    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 253
    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 254
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu;->mExpanded:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private Button(Landroid/widget/LinearLayout;ILjava/lang/String;)V
    .registers 8

    .line 618
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 619
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x7

    const/4 v3, 0x5

    .line 620
    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 621
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 622
    iget v1, p0, Lcom/android/support/CkHomuraMenu;->TEXT_COLOR_2:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v1, 0x0

    .line 624
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 626
    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 627
    iget v1, p0, Lcom/android/support/CkHomuraMenu;->BTN_COLOR:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 628
    new-instance v1, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda2;-><init>(Lcom/android/support/CkHomuraMenu;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 640
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private ButtonLink(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 644
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 645
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x7

    const/4 v3, 0x5

    .line 646
    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 647
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    .line 649
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 651
    iget v1, p0, Lcom/android/support/CkHomuraMenu;->TEXT_COLOR_2:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 652
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 653
    iget p2, p0, Lcom/android/support/CkHomuraMenu;->BTN_COLOR:I

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 654
    new-instance p2, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0, p3}, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda6;-><init>(Lcom/android/support/CkHomuraMenu;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 660
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private ButtonOnOff(Landroid/widget/LinearLayout;ILjava/lang/String;Z)V
    .registers 11

    .line 664
    new-instance v5, Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v5, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 665
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x7

    const/4 v2, 0x5

    .line 666
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 667
    invoke-virtual {v5, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 668
    iget v0, p0, Lcom/android/support/CkHomuraMenu;->TEXT_COLOR_2:I

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v0, 0x0

    .line 670
    invoke-virtual {v5, v0}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 673
    const-string v1, "OnOff_"

    const-string v2, ""

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 674
    invoke-static {p3, p2, p4}, Lcom/android/support/Preferences;->loadPrefBool(Ljava/lang/String;IZ)Z

    move-result p3

    if-eqz p3, :cond_4b

    .line 676
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ": ON"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p3

    invoke-virtual {v5, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 677
    iget p3, p0, Lcom/android/support/CkHomuraMenu;->BtnON:I

    invoke-virtual {v5, p3}, Landroid/widget/Button;->setBackgroundColor(I)V

    const/4 v2, 0x0

    goto :goto_6a

    .line 680
    :cond_4b
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ": OFF"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p3

    invoke-virtual {v5, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 681
    iget p3, p0, Lcom/android/support/CkHomuraMenu;->BtnOFF:I

    invoke-virtual {v5, p3}, Landroid/widget/Button;->setBackgroundColor(I)V

    const/4 v0, 0x1

    const/4 v2, 0x1

    .line 685
    :goto_6a
    new-instance v0, Lcom/android/support/CkHomuraMenu$3;

    move-object v1, p0

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/support/CkHomuraMenu$3;-><init>(Lcom/android/support/CkHomuraMenu;ZLjava/lang/String;ILandroid/widget/Button;)V

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 702
    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private Category(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .registers 5

    .line 985
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 986
    iget v1, p0, Lcom/android/support/CkHomuraMenu;->CategoryBG:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 987
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0x11

    .line 988
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 989
    iget p2, p0, Lcom/android/support/CkHomuraMenu;->TEXT_COLOR_2:I

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p2, 0x0

    const/4 v1, 0x1

    .line 990
    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/4 p2, 0x0

    const/4 v1, 0x5

    .line 991
    invoke-virtual {v0, p2, v1, p2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 992
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private CheckBox(Landroid/widget/LinearLayout;ILjava/lang/String;Z)V
    .registers 8

    .line 876
    new-instance v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 877
    invoke-virtual {v0, p3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 878
    iget v1, p0, Lcom/android/support/CkHomuraMenu;->TEXT_COLOR_2:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 879
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1e

    .line 880
    iget v1, p0, Lcom/android/support/CkHomuraMenu;->CheckBoxColor:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 881
    :cond_1e
    invoke-static {p3, p2, p4}, Lcom/android/support/Preferences;->loadPrefBool(Ljava/lang/String;IZ)Z

    move-result p4

    invoke-virtual {v0, p4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 882
    new-instance p4, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda1;

    invoke-direct {p4, v0, p3, p2}, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda1;-><init>(Landroid/widget/CheckBox;Ljava/lang/String;I)V

    invoke-virtual {v0, p4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 889
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x1

    const/4 p4, -0x2

    invoke-direct {p2, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 p3, 0x11

    .line 890
    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 891
    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 892
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private Collapse(Landroid/widget/LinearLayout;Ljava/lang/String;Z)V
    .registers 15

    .line 933
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    const/4 v2, 0x5

    .line 934
    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 936
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 937
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x10

    .line 938
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVerticalGravity(I)V

    const/4 v4, 0x1

    .line 939
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 941
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v8, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 942
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setVerticalGravity(I)V

    .line 943
    invoke-virtual {v8, v1, v2, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 944
    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 945
    const-string v0, "#222D38"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/16 v0, 0x8

    .line 946
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 947
    iput-object v8, p0, Lcom/android/support/CkHomuraMenu;->mCollapse:Landroid/widget/LinearLayout;

    .line 949
    new-instance v9, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 950
    iget v0, p0, Lcom/android/support/CkHomuraMenu;->CategoryBG:I

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 951
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const-string v2, "\u25bd %s \u25bd"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x11

    .line 952
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 953
    iget v0, p0, Lcom/android/support/CkHomuraMenu;->TEXT_COLOR_2:I

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x0

    .line 954
    invoke-virtual {v9, v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/16 v0, 0x14

    .line 955
    invoke-virtual {v9, v1, v0, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    if-eqz p3, :cond_7c

    .line 958
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 959
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const-string v1, "\u25b3 %s \u25b3"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 962
    :cond_7c
    new-instance v5, Lcom/android/support/CkHomuraMenu$5;

    move-object v6, p0

    move-object v10, p2

    move v7, p3

    invoke-direct/range {v5 .. v10}, Lcom/android/support/CkHomuraMenu$5;-><init>(Lcom/android/support/CkHomuraMenu;ZLandroid/widget/LinearLayout;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 979
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 980
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 981
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private FormationCopy(Landroid/widget/LinearLayout;ILjava/lang/String;)V
    .registers 6

    .line 483
    new-instance p2, Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 484
    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 485
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p3, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x7

    const/4 v1, 0x5

    .line 486
    invoke-virtual {p3, v0, v1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 487
    invoke-virtual {p2, p3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 488
    iget p3, p0, Lcom/android/support/CkHomuraMenu;->TEXT_COLOR_2:I

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setTextColor(I)V

    const/4 p3, 0x0

    .line 490
    invoke-virtual {p2, p3}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 492
    iget p3, p0, Lcom/android/support/CkHomuraMenu;->BTN_COLOR:I

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 493
    new-instance p3, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda19;

    invoke-direct {p3, p0}, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda19;-><init>(Lcom/android/support/CkHomuraMenu;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 499
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private InputNum(Landroid/widget/LinearLayout;ILjava/lang/String;I)V
    .registers 15

    .line 744
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 745
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x7

    const/4 v3, 0x5

    .line 746
    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 748
    new-instance v7, Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v7, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 749
    invoke-static {p3, p2}, Lcom/android/support/Preferences;->loadPrefInt(Ljava/lang/String;I)I

    move-result v2

    .line 750
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": <font color=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/support/CkHomuraMenu;->NumberTxtColor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_37

    const/4 v2, 0x1

    :cond_37
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "</font>"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    .line 752
    invoke-virtual {v7, v2}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 754
    invoke-virtual {v7, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 755
    iget v1, p0, Lcom/android/support/CkHomuraMenu;->BTN_COLOR:I

    invoke-virtual {v7, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 756
    iget v1, p0, Lcom/android/support/CkHomuraMenu;->TEXT_COLOR_2:I

    invoke-virtual {v7, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 757
    new-instance v4, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda0;

    move-object v5, p0

    move v9, p2

    move-object v8, p3

    move v6, p4

    invoke-direct/range {v4 .. v9}, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda0;-><init>(Lcom/android/support/CkHomuraMenu;ILandroid/widget/Button;Ljava/lang/String;I)V

    invoke-virtual {v7, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 814
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 815
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private InputText(Landroid/widget/LinearLayout;ILjava/lang/String;)V
    .registers 10

    .line 819
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 820
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x7

    const/4 v3, 0x5

    .line 821
    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 823
    new-instance v2, Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 825
    invoke-static {p3, p2}, Lcom/android/support/Preferences;->loadPrefString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 826
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": <font color=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/support/CkHomuraMenu;->NumberTxtColor:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</font>"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    .line 829
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 831
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 832
    iget v1, p0, Lcom/android/support/CkHomuraMenu;->BTN_COLOR:I

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 833
    iget v1, p0, Lcom/android/support/CkHomuraMenu;->TEXT_COLOR_2:I

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 834
    new-instance v1, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v2, p3, p2}, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda5;-><init>(Lcom/android/support/CkHomuraMenu;Landroid/widget/Button;Ljava/lang/String;I)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 871
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 872
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private OnceCheckBox(Landroid/widget/LinearLayout;ILjava/lang/String;)V
    .registers 8

    .line 503
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 504
    invoke-virtual {v0, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 505
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x7

    const/4 v3, 0x5

    .line 506
    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 507
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 508
    iget v1, p0, Lcom/android/support/CkHomuraMenu;->TEXT_COLOR_2:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v1, 0x0

    .line 510
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 512
    iget v1, p0, Lcom/android/support/CkHomuraMenu;->BTN_COLOR:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 513
    new-instance v1, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda20;

    invoke-direct {v1, p3, p2}, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda20;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private RadioButton(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;)V
    .registers 15

    .line 897
    new-instance v0, Ljava/util/LinkedList;

    const-string v1, ","

    invoke-virtual {p4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    invoke-direct {v0, p4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 899
    new-instance v3, Landroid/widget/TextView;

    iget-object p4, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p4, 0x1

    .line 900
    new-array v1, p4, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const-string v4, "%s:"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 901
    iget v1, p0, Lcom/android/support/CkHomuraMenu;->TEXT_COLOR_2:I

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 903
    new-instance v7, Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v7, v1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    const/16 v1, 0xa

    const/4 v4, 0x5

    .line 904
    invoke-virtual {v7, v1, v4, v1, v4}, Landroid/widget/RadioGroup;->setPadding(IIII)V

    .line 905
    invoke-virtual {v7, p4}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 906
    invoke-virtual {v7, v3}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    const/4 v9, 0x0

    .line 908
    :goto_3e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_8e

    .line 909
    new-instance v8, Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v8, v1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 910
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 911
    new-instance v1, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda18;

    move-object v2, p0

    move v6, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda18;-><init>(Lcom/android/support/CkHomuraMenu;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;ILandroid/widget/RadioGroup;Landroid/widget/RadioButton;)V

    .line 915
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 916
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v8, p2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const p2, -0x333334

    .line 917
    invoke-virtual {v8, p2}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 918
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x15

    if-lt p2, p3, :cond_83

    .line 919
    iget p2, v2, Lcom/android/support/CkHomuraMenu;->RadioColor:I

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {v8, p2}, Landroid/widget/RadioButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 920
    :cond_83
    invoke-virtual {v8, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 921
    invoke-virtual {v7, v8}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v9, v9, 0x1

    move-object p3, v4

    move p2, v6

    goto :goto_3e

    :cond_8e
    move-object v2, p0

    move v6, p2

    move-object v4, p3

    .line 924
    invoke-static {v4, v6}, Lcom/android/support/Preferences;->loadPrefInt(Ljava/lang/String;I)I

    move-result p2

    if-lez p2, :cond_cd

    .line 926
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": <font color=\'"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/android/support/CkHomuraMenu;->NumberTxtColor:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'>"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p3

    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 927
    invoke-virtual {v7, p2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    invoke-virtual {p2, p4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 929
    :cond_cd
    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private SeekBar(Landroid/widget/LinearLayout;ILjava/lang/String;II)V
    .registers 16

    .line 577
    invoke-static {p3, p2}, Lcom/android/support/Preferences;->loadPrefInt(Ljava/lang/String;I)I

    move-result v0

    .line 578
    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v6, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x5

    const/4 v5, 0x0

    const/16 v7, 0xa

    .line 579
    invoke-virtual {v6, v7, v2, v5, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v2, 0x1

    .line 580
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x11

    .line 581
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 583
    new-instance v5, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v5, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 584
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": <font color=\'"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/support/CkHomuraMenu;->NumberTxtColor:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\'>"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_3d

    move v8, p4

    goto :goto_3e

    :cond_3d
    move v8, v0

    :goto_3e
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    iget v2, p0, Lcom/android/support/CkHomuraMenu;->TEXT_COLOR_2:I

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 587
    new-instance v8, Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v8, v2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x19

    const/16 v9, 0x23

    .line 588
    invoke-virtual {v8, v2, v7, v9, v7}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 589
    invoke-virtual {v8, p5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 590
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-lt v2, v7, :cond_6b

    .line 591
    invoke-virtual {v8, p4}, Landroid/widget/SeekBar;->setMin(I)V

    :cond_6b
    if-nez v0, :cond_6e

    move v0, p4

    .line 592
    :cond_6e
    invoke-virtual {v8, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 594
    invoke-virtual {v8}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v7, p0, Lcom/android/support/CkHomuraMenu;->SeekBarColor:I

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v7, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 596
    invoke-virtual {v8}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v7, p0, Lcom/android/support/CkHomuraMenu;->SeekBarProgressColor:I

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v7, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 597
    new-instance v0, Lcom/android/support/CkHomuraMenu$2;

    move-object v1, p0

    move v4, p2

    move-object v3, p3

    move v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/support/CkHomuraMenu$2;-><init>(Lcom/android/support/CkHomuraMenu;ILjava/lang/String;ILandroid/widget/TextView;)V

    invoke-virtual {v8, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 611
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 612
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 614
    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private Spinner(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 707
    new-instance v0, Ljava/util/LinkedList;

    const-string v1, ","

    invoke-virtual {p4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    invoke-direct {v0, p4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 711
    new-instance p4, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {p4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 712
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x7

    const/4 v3, 0x2

    .line 713
    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/4 v2, 0x1

    .line 714
    invoke-virtual {p4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 715
    iget v3, p0, Lcom/android/support/CkHomuraMenu;->BTN_COLOR:I

    invoke-virtual {p4, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 716
    invoke-virtual {p4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 718
    new-instance v3, Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;I)V

    .line 719
    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, 0x60000

    .line 720
    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setDescendantFocusability(I)V

    .line 721
    invoke-virtual {v3}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 723
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    const v4, 0x1090009

    invoke-direct {v1, v2, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 724
    invoke-virtual {v1, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 726
    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 727
    invoke-static {p3, p2}, Lcom/android/support/Preferences;->loadPrefInt(Ljava/lang/String;I)I

    move-result p3

    invoke-virtual {v3, p3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 728
    new-instance p3, Lcom/android/support/CkHomuraMenu$4;

    invoke-direct {p3, p0, v3, p2}, Lcom/android/support/CkHomuraMenu$4;-><init>(Lcom/android/support/CkHomuraMenu;Landroid/widget/Spinner;I)V

    invoke-virtual {v3, p3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 739
    invoke-virtual {p4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 740
    invoke-virtual {p1, p4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private Switch(Landroid/widget/LinearLayout;ILjava/lang/String;Z)V
    .registers 12

    .line 535
    new-instance v0, Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 536
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

    .line 551
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_4b

    .line 552
    invoke-virtual {v0}, Landroid/widget/Switch;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 553
    invoke-virtual {v0}, Landroid/widget/Switch;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v3, :cond_46

    .line 554
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_46
    if-eqz v4, :cond_4b

    .line 555
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 557
    :cond_4b
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_54

    .line 558
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 560
    :cond_54
    invoke-virtual {v0, p3}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    .line 561
    iget v1, p0, Lcom/android/support/CkHomuraMenu;->TEXT_COLOR_2:I

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setTextColor(I)V

    const/16 v1, 0xa

    const/4 v3, 0x5

    .line 562
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 563
    invoke-static {p3, p2, p4}, Lcom/android/support/Preferences;->loadPrefBool(Ljava/lang/String;IZ)Z

    move-result p4

    invoke-virtual {v0, p4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 564
    new-instance p4, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda4;

    invoke-direct {p4, p3, p2, v0}, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;ILandroid/widget/Switch;)V

    invoke-virtual {v0, p4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 573
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private TextView(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .registers 5

    .line 996
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 997
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 998
    iget p2, p0, Lcom/android/support/CkHomuraMenu;->TEXT_COLOR_2:I

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p2, 0xa

    const/4 v1, 0x5

    .line 999
    invoke-virtual {v0, p2, v1, p2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1000
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private WebTextView(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .registers 6

    .line 1004
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 1005
    const-string v1, "text/html"

    const-string v2, "utf-8"

    invoke-virtual {v0, p2, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 1006
    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    const/4 v1, 0x5

    .line 1007
    invoke-virtual {v0, p2, v1, p2, v1}, Landroid/webkit/WebView;->setPadding(IIII)V

    .line 1008
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

    .line 1017
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

    .line 391
    :goto_5
    array-length v4, v0

    if-ge v2, v4, :cond_1ec

    .line 394
    aget-object v4, v0, v2

    .line 395
    const-string v5, "_True"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, ""

    const/4 v8, 0x1

    if-eqz v6, :cond_1b

    .line 397
    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v5, 0x0

    .line 401
    :goto_1c
    const-string v6, "CollapseAdd_"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 403
    iget-object v9, p0, Lcom/android/support/CkHomuraMenu;->mCollapse:Landroid/widget/LinearLayout;

    .line 404
    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v10, v9

    goto :goto_2e

    :cond_2c
    move-object/from16 v10, p2

    .line 406
    :goto_2e
    const-string v6, "_"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 409
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

    goto :goto_68

    .line 410
    :cond_4b
    :goto_4b
    aget-object v11, v9, v1

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 411
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v9, v1

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    .line 417
    :goto_68
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 418
    aget-object v6, v4, v1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v9, 0x3

    const/4 v12, 0x2

    const/4 v13, -0x1

    sparse-switch v7, :sswitch_data_1ee

    goto/16 :goto_144

    :sswitch_7d
    const-string v7, "Button"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_87

    goto/16 :goto_144

    :cond_87
    const/16 v13, 0xf

    goto/16 :goto_144

    :sswitch_8b
    const-string v7, "CheckBox"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_95

    goto/16 :goto_144

    :cond_95
    const/16 v13, 0xe

    goto/16 :goto_144

    :sswitch_99
    const-string v7, "RadioButton"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a3

    goto/16 :goto_144

    :cond_a3
    const/16 v13, 0xd

    goto/16 :goto_144

    :sswitch_a7
    const-string v7, "RichWebView"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b1

    goto/16 :goto_144

    :cond_b1
    const/16 v13, 0xc

    goto/16 :goto_144

    :sswitch_b5
    const-string v7, "Category"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_bf

    goto/16 :goto_144

    :cond_bf
    const/16 v13, 0xb

    goto/16 :goto_144

    :sswitch_c3
    const-string v7, "RichTextView"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_cd

    goto/16 :goto_144

    :cond_cd
    const/16 v13, 0xa

    goto/16 :goto_144

    :sswitch_d1
    const-string v7, "ButtonOnOff"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_db

    goto/16 :goto_144

    :cond_db
    const/16 v13, 0x9

    goto/16 :goto_144

    :sswitch_df
    const-string v7, "Spinner"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e9

    goto/16 :goto_144

    :cond_e9
    const/16 v13, 0x8

    goto/16 :goto_144

    :sswitch_ed
    const-string v7, "Collapse"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f6

    goto :goto_144

    :cond_f6
    const/4 v13, 0x7

    goto :goto_144

    :sswitch_f8
    const-string v7, "InputText"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_101

    goto :goto_144

    :cond_101
    const/4 v13, 0x6

    goto :goto_144

    :sswitch_103
    const-string v7, "SeekBar"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10c

    goto :goto_144

    :cond_10c
    const/4 v13, 0x5

    goto :goto_144

    :sswitch_10e
    const-string v7, "InputValue"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_117

    goto :goto_144

    :cond_117
    const/4 v13, 0x4

    goto :goto_144

    :sswitch_119
    const-string v7, "OnceCheckBox"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_122

    goto :goto_144

    :cond_122
    const/4 v13, 0x3

    goto :goto_144

    :sswitch_124
    const-string v7, "Toggle"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12d

    goto :goto_144

    :cond_12d
    const/4 v13, 0x2

    goto :goto_144

    :sswitch_12f
    const-string v7, "FormationCopy"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_138

    goto :goto_144

    :cond_138
    const/4 v13, 0x1

    goto :goto_144

    :sswitch_13a
    const-string v7, "ButtonLink"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_143

    goto :goto_144

    :cond_143
    const/4 v13, 0x0

    :goto_144
    packed-switch v13, :pswitch_data_230

    goto/16 :goto_1e8

    .line 426
    :pswitch_149
    aget-object v4, v4, v8

    invoke-direct {p0, v10, v11, v4}, Lcom/android/support/CkHomuraMenu;->Button(Landroid/widget/LinearLayout;ILjava/lang/String;)V

    goto/16 :goto_1e8

    .line 445
    :pswitch_150
    aget-object v4, v4, v8

    invoke-direct {p0, v10, v11, v4, v5}, Lcom/android/support/CkHomuraMenu;->CheckBox(Landroid/widget/LinearLayout;ILjava/lang/String;Z)V

    goto/16 :goto_1e8

    .line 448
    :pswitch_157
    aget-object v5, v4, v8

    aget-object v4, v4, v12

    invoke-direct {p0, v10, v11, v5, v4}, Lcom/android/support/CkHomuraMenu;->RadioButton(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1e8

    :pswitch_160
    add-int/lit8 v3, v3, 0x1

    .line 468
    aget-object v4, v4, v8

    invoke-direct {p0, v10, v4}, Lcom/android/support/CkHomuraMenu;->WebTextView(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    goto/16 :goto_1e8

    :pswitch_169
    add-int/lit8 v3, v3, 0x1

    .line 460
    aget-object v4, v4, v8

    invoke-direct {p0, v10, v4}, Lcom/android/support/CkHomuraMenu;->Category(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    goto/16 :goto_1e8

    :pswitch_172
    add-int/lit8 v3, v3, 0x1

    .line 464
    aget-object v4, v4, v8

    invoke-direct {p0, v10, v4}, Lcom/android/support/CkHomuraMenu;->TextView(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    goto/16 :goto_1e8

    .line 429
    :pswitch_17b
    aget-object v4, v4, v8

    invoke-direct {p0, v10, v11, v4, v5}, Lcom/android/support/CkHomuraMenu;->ButtonOnOff(Landroid/widget/LinearLayout;ILjava/lang/String;Z)V

    goto :goto_1e8

    .line 432
    :pswitch_181
    aget-object v5, v4, v8

    invoke-direct {p0, v10, v5}, Lcom/android/support/CkHomuraMenu;->TextView(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 433
    aget-object v5, v4, v8

    aget-object v4, v4, v12

    invoke-direct {p0, v10, v11, v5, v4}, Lcom/android/support/CkHomuraMenu;->Spinner(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1e8

    .line 451
    :pswitch_18e
    aget-object v4, v4, v8

    invoke-direct {p0, v10, v4, v5}, Lcom/android/support/CkHomuraMenu;->Collapse(Landroid/widget/LinearLayout;Ljava/lang/String;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1e8

    .line 436
    :pswitch_196
    aget-object v4, v4, v8

    invoke-direct {p0, v10, v11, v4}, Lcom/android/support/CkHomuraMenu;->InputText(Landroid/widget/LinearLayout;ILjava/lang/String;)V

    goto :goto_1e8

    :pswitch_19c
    const/4 v5, 0x2

    .line 423
    aget-object v12, v4, v8

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    aget-object v4, v4, v9

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object v9, p0

    invoke-direct/range {v9 .. v14}, Lcom/android/support/CkHomuraMenu;->SeekBar(Landroid/widget/LinearLayout;ILjava/lang/String;II)V

    goto :goto_1e8

    :pswitch_1b0
    const/4 v5, 0x2

    .line 439
    array-length v7, v4

    if-ne v7, v9, :cond_1bf

    .line 440
    aget-object v7, v4, v5

    aget-object v9, v4, v8

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {p0, v10, v11, v7, v9}, Lcom/android/support/CkHomuraMenu;->InputNum(Landroid/widget/LinearLayout;ILjava/lang/String;I)V

    .line 441
    :cond_1bf
    array-length v7, v4

    if-ne v7, v5, :cond_1e8

    .line 442
    aget-object v4, v4, v8

    invoke-direct {p0, v10, v11, v4, v1}, Lcom/android/support/CkHomuraMenu;->InputNum(Landroid/widget/LinearLayout;ILjava/lang/String;I)V

    goto :goto_1e8

    :pswitch_1c8
    add-int/lit8 v3, v3, 0x1

    .line 472
    aget-object v4, v4, v8

    invoke-direct {p0, v10, v11, v4}, Lcom/android/support/CkHomuraMenu;->OnceCheckBox(Landroid/widget/LinearLayout;ILjava/lang/String;)V

    goto :goto_1e8

    .line 420
    :pswitch_1d0
    aget-object v4, v4, v8

    invoke-direct {p0, v10, v11, v4, v5}, Lcom/android/support/CkHomuraMenu;->Switch(Landroid/widget/LinearLayout;ILjava/lang/String;Z)V

    goto :goto_1e8

    :pswitch_1d6
    add-int/lit8 v3, v3, 0x1

    .line 476
    aget-object v4, v4, v8

    invoke-direct {p0, v10, v11, v4}, Lcom/android/support/CkHomuraMenu;->FormationCopy(Landroid/widget/LinearLayout;ILjava/lang/String;)V

    goto :goto_1e8

    :pswitch_1de
    const/4 v5, 0x2

    add-int/lit8 v3, v3, 0x1

    .line 456
    aget-object v7, v4, v8

    aget-object v4, v4, v5

    invoke-direct {p0, v10, v7, v4}, Lcom/android/support/CkHomuraMenu;->ButtonLink(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e8
    :goto_1e8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    :cond_1ec
    return-void

    nop

    :sswitch_data_1ee
    .sparse-switch
        -0x73d2c194 -> :sswitch_13a
        -0x6b0be45a -> :sswitch_12f
        -0x6a5c588c -> :sswitch_124
        -0x4f0d969c -> :sswitch_119
        -0x370e8c19 -> :sswitch_10e
        -0x274065a5 -> :sswitch_103
        -0x22cfc409 -> :sswitch_f8
        -0x21d27833 -> :sswitch_ed
        -0x1440b607 -> :sswitch_df
        -0x6595922 -> :sswitch_d1
        0x4f11a8e -> :sswitch_c3
        0x6dd211e -> :sswitch_b5
        0x1977177d -> :sswitch_a7
        0x2e46a6ed -> :sswitch_99
        0x5f7507c3 -> :sswitch_8b
        0x77471352 -> :sswitch_7d
    .end sparse-switch

    :pswitch_data_230
    .packed-switch 0x0
        :pswitch_1de
        :pswitch_1d6
        :pswitch_1d0
        :pswitch_1c8
        :pswitch_1b0
        :pswitch_19c
        :pswitch_196
        :pswitch_18e
        :pswitch_181
        :pswitch_17b
        :pswitch_172
        :pswitch_169
        :pswitch_160
        :pswitch_157
        :pswitch_150
        :pswitch_149
    .end packed-switch
.end method

.method private isViewCollapsed()Z
    .registers 2

    .line 1012
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

    .line 883
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_a

    .line 884
    invoke-static {p1, p2, p4}, Lcom/android/support/Preferences;->changeFeatureBool(Ljava/lang/String;IZ)V

    return-void

    .line 886
    :cond_a
    invoke-static {p1, p2, p4}, Lcom/android/support/Preferences;->changeFeatureBool(Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic lambda$OnceCheckBox$6(Ljava/lang/String;ILandroid/view/View;)V
    .registers 3

    const/4 p2, 0x1

    .line 513
    invoke-static {p0, p1, p2}, Lcom/android/support/Preferences;->changeFeatureBool(Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic lambda$Switch$7(Ljava/lang/String;ILandroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V
    .registers 5

    .line 525
    invoke-static {p0, p1, p4}, Lcom/android/support/Preferences;->changeFeatureBool(Ljava/lang/String;IZ)V

    const/4 p0, -0x1

    if-ne p1, p0, :cond_1e

    .line 527
    invoke-virtual {p2}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/support/Preferences;->with(Landroid/content/Context;)Lcom/android/support/Preferences;

    move-result-object p1

    invoke-virtual {p1, p0, p4}, Lcom/android/support/Preferences;->writeBoolean(IZ)V

    if-nez p4, :cond_1e

    .line 529
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

    .line 565
    invoke-static {p0, p1, p4}, Lcom/android/support/Preferences;->changeFeatureBool(Ljava/lang/String;IZ)V

    const/4 p0, -0x1

    if-ne p1, p0, :cond_1e

    .line 567
    invoke-virtual {p2}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/support/Preferences;->with(Landroid/content/Context;)Lcom/android/support/Preferences;

    move-result-object p1

    invoke-virtual {p1, p0, p4}, Lcom/android/support/Preferences;->writeBoolean(IZ)V

    if-nez p4, :cond_1e

    .line 569
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

    .line 311
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x42340000    # 45.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 312
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 313
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 314
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 316
    const-string v1, "#2F3D4C"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v0, v1

    .line 317
    invoke-virtual {v3, v1, v1, v1, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 319
    const-string v4, "#FFB300"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setColor(I)V

    const v4, 0x3e99999a    # 0.3f

    mul-float v4, v4, v0

    .line 320
    invoke-virtual {v3, v1, v1, v4, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 322
    const-string v4, "#82CAFD"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setColor(I)V

    const v4, 0x3d75c28f    # 0.06f

    mul-float v4, v4, v0

    .line 323
    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 324
    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/4 v4, 0x0

    const/4 v9, 0x0

    :goto_5a
    const/16 v4, 0x8

    if-ge v9, v4, :cond_c2

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v6, v9

    .line 326
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

    .line 329
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

    .line 330
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

    .line 329
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v9, v9, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    goto :goto_5a

    .line 332
    :cond_c2
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private onTouchListener()Landroid/view/View$OnTouchListener;
    .registers 4

    .line 336
    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    const-string v1, "data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 337
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

    .line 300
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 302
    iget-object v1, p0, Lcom/android/support/CkHomuraMenu;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 306
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/android/support/CkHomuraMenu;->SCREEN_WIDTH:I

    .line 307
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/android/support/CkHomuraMenu;->SCREEN_HEIGHT:I

    return-void
.end method

.method public SetWindowManagerActivity()V
    .registers 11

    .line 271
    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    const-string v1, "data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 274
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_14

    const/16 v1, 0x7f6

    const/16 v7, 0x7f6

    goto :goto_18

    :cond_14
    const/16 v1, 0x7d2

    const/16 v7, 0x7d2

    .line 280
    :goto_18
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const-string v1, "menuX"

    iget v3, p0, Lcom/android/support/CkHomuraMenu;->POS_X:I

    .line 283
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string v1, "menuY"

    iget v3, p0, Lcom/android/support/CkHomuraMenu;->POS_Y:I

    .line 284
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    const v8, 0x800108

    const/4 v9, -0x2

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct/range {v2 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v2, p0, Lcom/android/support/CkHomuraMenu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    .line 291
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_40

    .line 292
    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 293
    :cond_40
    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 294
    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/support/CkHomuraMenu;->mWindowManager:Landroid/view/WindowManager;

    .line 295
    invoke-virtual {p0}, Lcom/android/support/CkHomuraMenu;->GetWidthHeight()V

    .line 296
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

    .line 265
    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->rootFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/support/CkHomuraMenu;->mRootContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 266
    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->mods:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 267
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

    .line 632
    :cond_4
    iget-boolean p3, p0, Lcom/android/support/CkHomuraMenu;->settingsOpen:Z

    xor-int/lit8 p3, p3, 0x1

    iput-boolean p3, p0, Lcom/android/support/CkHomuraMenu;->settingsOpen:Z

    .line 633
    iget-object p3, p0, Lcom/android/support/CkHomuraMenu;->scrollView:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->mSettings:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v0}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 634
    iget-object p3, p0, Lcom/android/support/CkHomuraMenu;->scrollView:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->mods:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    :goto_18
    const/4 p3, 0x0

    .line 637
    invoke-static {p2, p1, p3}, Lcom/android/support/Preferences;->changeFeatureInt(Ljava/lang/String;II)V

    return-void
.end method

.method synthetic lambda$ButtonLink$10$com-android-support-CkHomuraMenu(Ljava/lang/String;Landroid/view/View;)V
    .registers 4

    .line 655
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 656
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 657
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 658
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$FormationCopy$5$com-android-support-CkHomuraMenu(Landroid/view/View;)V
    .registers 5

    .line 494
    invoke-virtual {p0}, Lcom/android/support/CkHomuraMenu;->GetCurrentFormation()Ljava/lang/String;

    move-result-object p1

    .line 495
    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    const-string v1, "Copiado al portapapeles"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 496
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

    .line 768
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x1

    if-eqz p2, :cond_12

    const/4 p2, 0x2

    .line 770
    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    return-void

    :cond_12
    const/4 p2, 0x0

    .line 772
    invoke-virtual {p1, v0, p2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    return-void
.end method

.method synthetic lambda$InputNum$12$com-android-support-CkHomuraMenu(Landroid/widget/EditText;ILandroid/widget/Button;Ljava/lang/String;ILandroid/content/DialogInterface;I)V
    .registers 8

    .line 787
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

    .line 797
    :goto_2b
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p7, ": <font color=\'"

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p7, p0, Lcom/android/support/CkHomuraMenu;->NumberTxtColor:Ljava/lang/String;

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p7, "\'>"

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p7, "</font>"

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p6

    invoke-virtual {p3, p6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 798
    invoke-static {p4, p5, p2}, Lcom/android/support/Preferences;->changeFeatureInt(Ljava/lang/String;II)V

    const/4 p2, 0x0

    .line 800
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setFocusable(Z)V

    return-void
.end method

.method synthetic lambda$InputNum$13$com-android-support-CkHomuraMenu(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 805
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 806
    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    return-void
.end method

.method synthetic lambda$InputNum$14$com-android-support-CkHomuraMenu(ILandroid/widget/Button;Ljava/lang/String;ILandroid/view/View;)V
    .registers 14

    .line 758
    new-instance p5, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {p5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 759
    new-instance v3, Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_21

    .line 761
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Max value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_21
    const/4 v0, 0x2

    .line 762
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 763
    const-string v0, "0123456789-"

    invoke-static {v0}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    const/4 v0, 0x1

    .line 764
    new-array v1, v0, [Landroid/text/InputFilter;

    .line 765
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0xa

    invoke-direct {v2, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v4, 0x0

    aput-object v2, v1, v4

    .line 766
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 767
    new-instance v1, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda7;-><init>(Lcom/android/support/CkHomuraMenu;)V

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 775
    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 777
    const-string v1, "Input number"

    invoke-virtual {p5, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 778
    invoke-virtual {p5, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 779
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 780
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 781
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 782
    invoke-virtual {p5, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 784
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

    .line 803
    iget-object p1, v2, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    const/high16 p2, 0x1040000

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda9;

    invoke-direct {p2, p0}, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda9;-><init>(Lcom/android/support/CkHomuraMenu;)V

    invoke-virtual {p5, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 810
    invoke-virtual {p5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method synthetic lambda$InputText$15$com-android-support-CkHomuraMenu(Landroid/view/View;Z)V
    .registers 4

    .line 839
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x1

    if-eqz p2, :cond_12

    const/4 p2, 0x2

    .line 841
    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    return-void

    :cond_12
    const/4 p2, 0x0

    .line 843
    invoke-virtual {p1, v0, p2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    return-void
.end method

.method synthetic lambda$InputText$16$com-android-support-CkHomuraMenu(Landroid/widget/EditText;Landroid/widget/Button;Ljava/lang/String;ILandroid/content/DialogInterface;I)V
    .registers 8

    .line 856
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    .line 857
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": <font color=\'"

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->NumberTxtColor:Ljava/lang/String;

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'>"

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</font>"

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p6

    invoke-virtual {p2, p6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 858
    invoke-static {p3, p4, p5}, Lcom/android/support/Preferences;->changeFeatureString(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p2, 0x0

    .line 859
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setFocusable(Z)V

    return-void
.end method

.method synthetic lambda$InputText$17$com-android-support-CkHomuraMenu(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 864
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 865
    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    return-void
.end method

.method synthetic lambda$InputText$18$com-android-support-CkHomuraMenu(Landroid/widget/Button;Ljava/lang/String;ILandroid/view/View;)V
    .registers 12

    .line 835
    new-instance p4, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {p4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 837
    new-instance v3, Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 838
    new-instance v0, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda10;-><init>(Lcom/android/support/CkHomuraMenu;)V

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 846
    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 848
    const-string v0, "Input text"

    invoke-virtual {p4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 849
    invoke-virtual {p4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 850
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 851
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 852
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 853
    invoke-virtual {p4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 855
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

    .line 862
    iget-object p1, v2, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    const/high16 p2, 0x1040000

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda12;

    invoke-direct {p2, p0}, Lcom/android/support/CkHomuraMenu$$ExternalSyntheticLambda12;-><init>(Lcom/android/support/CkHomuraMenu;)V

    invoke-virtual {p4, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 868
    invoke-virtual {p4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method synthetic lambda$RadioButton$20$com-android-support-CkHomuraMenu(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;ILandroid/widget/RadioGroup;Landroid/widget/RadioButton;Landroid/view/View;)V
    .registers 9

    .line 912
    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": <font color=\'"

    invoke-virtual {p7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->NumberTxtColor:Ljava/lang/String;

    invoke-virtual {p7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'>"

    invoke-virtual {p7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 913
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

    .line 218
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

    .line 220
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu;->getContext:Landroid/content/Context;

    const-string v0, "Men\u00fa de trucos cerrado"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 221
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu;->rootFrame:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->mRootContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 222
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->rootFrame:Landroid/widget/FrameLayout;

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$new$4$com-android-support-CkHomuraMenu(Landroid/view/View;)V
    .registers 3

    .line 238
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu;->mCollapsed:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 239
    iget-object p1, p0, Lcom/android/support/CkHomuraMenu;->mExpanded:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 1021
    iget-object v0, p0, Lcom/android/support/CkHomuraMenu;->rootFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_9

    .line 1022
    iget-object v1, p0, Lcom/android/support/CkHomuraMenu;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_9
    return-void
.end method
