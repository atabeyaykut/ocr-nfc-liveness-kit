.class public final Lcom/esafirm/imagepicker/features/ImagePickerActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lt1/l;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/esafirm/imagepicker/features/ImagePickerActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Lt1/l;",
        "<init>",
        "()V",
        "imagepicker_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic h:I


# instance fields
.field public final a:Lu1/a;

.field public b:Landroidx/appcompat/app/ActionBar;

.field public c:Lt1/g;

.field public final d:Ll9/j;

.field public final e:Ll9/j;

.field public final f:Ll9/j;

.field public final g:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lc5/e0;->q:Lt1/c;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lt1/c;->b()Lu1/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->a:Lu1/a;

    .line 13
    .line 14
    new-instance v0, Lcom/esafirm/imagepicker/features/ImagePickerActivity$b;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity$b;-><init>(Lcom/esafirm/imagepicker/features/ImagePickerActivity;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lc5/y;->w(Lx9/a;)Ll9/j;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->d:Ll9/j;

    .line 24
    .line 25
    new-instance v0, Lcom/esafirm/imagepicker/features/ImagePickerActivity$a;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity$a;-><init>(Lcom/esafirm/imagepicker/features/ImagePickerActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lc5/y;->w(Lx9/a;)Ll9/j;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->e:Ll9/j;

    .line 35
    .line 36
    new-instance v0, Lcom/esafirm/imagepicker/features/ImagePickerActivity$c;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity$c;-><init>(Lcom/esafirm/imagepicker/features/ImagePickerActivity;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Lc5/y;->w(Lx9/a;)Ll9/j;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->f:Ll9/j;

    .line 46
    .line 47
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 48
    .line 49
    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    .line 50
    .line 51
    .line 52
    new-instance v1, Landroidx/camera/core/impl/k;

    .line 53
    .line 54
    const/4 v2, 0x1

    .line 55
    invoke-direct {v1, v2, p0}, Landroidx/camera/core/impl/k;-><init>(ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-string v1, "registerForActivityResul\u2026        }\n        }\n    }"

    .line 63
    .line 64
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->g:Landroidx/activity/result/ActivityResultLauncher;

    .line 68
    .line 69
    return-void

    .line 70
    :cond_0
    const-string v0, "internalComponents"

    .line 71
    .line 72
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const/4 v0, 0x0

    .line 76
    throw v0
.end method


# virtual methods
.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 6

    .line 1
    const-string v0, "newBase"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, La2/c;->a:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Ljava/util/Locale;

    .line 9
    .line 10
    sget-object v1, La2/c;->a:Ljava/lang/String;

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "localeLanguage.toString()"

    .line 20
    .line 21
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x5

    .line 29
    if-ne v2, v3, :cond_0

    .line 30
    .line 31
    new-instance v0, Ljava/util/Locale;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    const/4 v4, 0x2

    .line 35
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const-string v4, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 40
    .line 41
    invoke-static {v2, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 v5, 0x3

    .line 45
    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v1, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    const-string v4, "getDefault()"

    .line 57
    .line 58
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const-string v3, "this as java.lang.String).toUpperCase(locale)"

    .line 66
    .line 67
    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-direct {v0, v2, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    const-string v2, "zh"

    .line 75
    .line 76
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_2

    .line 81
    .line 82
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const-string v1, "TW"

    .line 91
    .line 92
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_1

    .line 97
    .line 98
    new-instance v0, Ljava/util/Locale;

    .line 99
    .line 100
    invoke-direct {v0, v2, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_1
    new-instance v0, Ljava/util/Locale;

    .line 105
    .line 106
    const-string v1, "CN"

    .line 107
    .line 108
    invoke-direct {v0, v2, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :cond_2
    :goto_0
    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    new-instance v2, Landroid/content/res/Configuration;

    .line 119
    .line 120
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-direct {v2, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    const-string v0, "resultContext.createConfigurationContext(config)"

    .line 135
    .line 136
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 140
    .line 141
    .line 142
    return-void
.end method

.method public final cancel()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->b:Landroidx/appcompat/app/ActionBar;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method public final j()V
    .locals 0

    return-void
.end method

.method public final k(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onBackPressed()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->c:Lt1/g;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v1, v0, Lt1/g;->b:Lz1/b;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_3

    .line 9
    .line 10
    iget-object v3, v1, Lz1/b;->b:Lt1/d;

    .line 11
    .line 12
    iget-boolean v3, v3, Lt1/d;->h:Z

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    const/4 v5, 0x0

    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    invoke-virtual {v1}, Lz1/b;->d()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lz1/b;->e(Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, v1, Lz1/b;->e:Ls1/g;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    sget-object v2, Lm9/v;->a:Lm9/v;

    .line 32
    .line 33
    iget-object v1, v1, Ls1/g;->d:Ll9/j;

    .line 34
    .line 35
    invoke-virtual {v1}, Ll9/j;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Landroidx/recyclerview/widget/AsyncListDiffer;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/AsyncListDiffer;->submitList(Ljava/util/List;)V

    .line 42
    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const-string v0, "imageAdapter"

    .line 47
    .line 48
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v2

    .line 52
    :cond_1
    const/4 v1, 0x0

    .line 53
    :goto_0
    if-eqz v1, :cond_2

    .line 54
    .line 55
    invoke-virtual {v0}, Lt1/g;->E()V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    const/4 v4, 0x0

    .line 60
    :goto_1
    if-nez v4, :cond_5

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_3
    const-string v0, "recyclerViewManager"

    .line 64
    .line 65
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v2

    .line 69
    :cond_4
    :goto_2
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 70
    .line 71
    .line 72
    :cond_5
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_6

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_6

    .line 19
    .line 20
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->f:Ll9/j;

    .line 21
    .line 22
    invoke-virtual {v0}, Ll9/j;->getValue()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    iget-object p1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->e:Ll9/j;

    .line 35
    .line 36
    invoke-virtual {p1}, Ll9/j;->getValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lv1/a;

    .line 41
    .line 42
    invoke-static {p1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->a:Lu1/a;

    .line 46
    .line 47
    invoke-interface {v0, p0, p1}, Lu1/a;->a(Landroid/content/Context;Lc6/a;)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->g:Landroidx/activity/result/ActivityResultLauncher;

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->d:Ll9/j;

    .line 58
    .line 59
    invoke-virtual {v0}, Ll9/j;->getValue()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Lt1/d;

    .line 64
    .line 65
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iget v1, v0, Lt1/d;->g:I

    .line 69
    .line 70
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 71
    .line 72
    .line 73
    const v1, 0x7f0d0048

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 77
    .line 78
    .line 79
    const v1, 0x7f0a0400

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    .line 87
    .line 88
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    iput-object v1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->b:Landroidx/appcompat/app/ActionBar;

    .line 96
    .line 97
    if-eqz v1, :cond_3

    .line 98
    .line 99
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    const/4 v3, 0x1

    .line 112
    if-ne v2, v3, :cond_1

    .line 113
    .line 114
    const v2, 0x7f0800a3

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_1
    const v2, 0x7f0800a2

    .line 119
    .line 120
    .line 121
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-static {v4, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    const/4 v4, -0x1

    .line 130
    iget v5, v0, Lt1/d;->e:I

    .line 131
    .line 132
    if-eq v5, v4, :cond_2

    .line 133
    .line 134
    if-eqz v2, :cond_2

    .line 135
    .line 136
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 137
    .line 138
    invoke-virtual {v2, v5, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 139
    .line 140
    .line 141
    :cond_2
    invoke-virtual {v1, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 148
    .line 149
    .line 150
    :cond_3
    const v1, 0x7f0a014e

    .line 151
    .line 152
    .line 153
    if-eqz p1, :cond_4

    .line 154
    .line 155
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    const-string v0, "null cannot be cast to non-null type com.esafirm.imagepicker.features.ImagePickerFragment"

    .line 164
    .line 165
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    check-cast p1, Lt1/g;

    .line 169
    .line 170
    iput-object p1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->c:Lt1/g;

    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_4
    sget p1, Lt1/g;->j:I

    .line 174
    .line 175
    new-instance p1, Landroid/os/Bundle;

    .line 176
    .line 177
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 178
    .line 179
    .line 180
    const-class v2, Lt1/d;

    .line 181
    .line 182
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 187
    .line 188
    .line 189
    new-instance v0, Lt1/g;

    .line 190
    .line 191
    invoke-direct {v0}, Lt1/g;-><init>()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 195
    .line 196
    .line 197
    iput-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->c:Lt1/g;

    .line 198
    .line 199
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    const-string v0, "supportFragmentManager.beginTransaction()"

    .line 208
    .line 209
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->c:Lt1/g;

    .line 213
    .line 214
    if-eqz v0, :cond_5

    .line 215
    .line 216
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 220
    .line 221
    .line 222
    :goto_1
    return-void

    .line 223
    :cond_5
    const-string p1, "imagePickerFragment"

    .line 224
    .line 225
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    const/4 p1, 0x0

    .line 229
    throw p1

    .line 230
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 231
    .line 232
    const-string v0, "This should not happen. Please open an issue!"

    .line 233
    .line 234
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    throw p1
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const v1, 0x102002c

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->onBackPressed()V

    .line 17
    .line 18
    .line 19
    return v2

    .line 20
    :cond_0
    const v1, 0x7f0a0262

    .line 21
    .line 22
    .line 23
    const-string v3, "imagePickerFragment"

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    if-ne v0, v1, :cond_2

    .line 27
    .line 28
    iget-object p1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->c:Lt1/g;

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Lt1/g;->D()V

    .line 33
    .line 34
    .line 35
    return v2

    .line 36
    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v4

    .line 40
    :cond_2
    const v1, 0x7f0a025f

    .line 41
    .line 42
    .line 43
    if-ne v0, v1, :cond_9

    .line 44
    .line 45
    iget-object p1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->c:Lt1/g;

    .line 46
    .line 47
    if-eqz p1, :cond_8

    .line 48
    .line 49
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v1, "requireActivity()"

    .line 54
    .line 55
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    new-instance v1, Landroid/content/Intent;

    .line 59
    .line 60
    const-string v3, "android.media.action.IMAGE_CAPTURE"

    .line 61
    .line 62
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v1, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    const/4 v1, 0x1

    .line 76
    goto :goto_0

    .line 77
    :cond_3
    const/4 v1, 0x0

    .line 78
    :goto_0
    if-nez v1, :cond_4

    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    const v3, 0x7f13007c

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 96
    .line 97
    .line 98
    :cond_4
    if-nez v1, :cond_5

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_5
    iget-object v0, p1, Lt1/g;->g:Lt1/u;

    .line 102
    .line 103
    if-eqz v0, :cond_7

    .line 104
    .line 105
    invoke-virtual {p1}, Lt1/g;->A()Lt1/d;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    const-string v3, "config"

    .line 110
    .line 111
    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    const-string v5, "fragment.requireContext()"

    .line 127
    .line 128
    invoke-static {v4, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget-object v0, v0, Lt1/u;->b:Lu1/a;

    .line 132
    .line 133
    invoke-interface {v0, v4, v1}, Lu1/a;->a(Landroid/content/Context;Lc6/a;)Landroid/content/Intent;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    if-nez v0, :cond_6

    .line 138
    .line 139
    const p1, 0x7f13007b

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-static {v3, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_6
    const/16 v1, 0x7d0

    .line 155
    .line 156
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 157
    .line 158
    .line 159
    :goto_1
    return v2

    .line 160
    :cond_7
    const-string p1, "presenter"

    .line 161
    .line 162
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw v4

    .line 166
    :cond_8
    invoke-static {v3}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw v4

    .line 170
    :cond_9
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    return p1
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    .line 1
    const-string v0, "menu"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->f:Ll9/j;

    .line 7
    .line 8
    invoke-virtual {v0}, Ll9/j;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_9

    .line 19
    .line 20
    const v0, 0x7f0a025f

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->d:Ll9/j;

    .line 28
    .line 29
    invoke-virtual {v1}, Ll9/j;->getValue()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lt1/d;

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    iget-boolean v2, v2, Lt1/d;->m:Z

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v2, 0x1

    .line 42
    :goto_0
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 43
    .line 44
    .line 45
    const v0, 0x7f0a0262

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v1}, Ll9/j;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Lt1/d;

    .line 57
    .line 58
    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    const/4 v2, 0x0

    .line 62
    iget-object v1, v1, Lt1/d;->d:Ljava/lang/String;

    .line 63
    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    invoke-static {v1}, Lmc/j;->y(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    const/4 v4, 0x0

    .line 74
    goto :goto_2

    .line 75
    :cond_2
    :goto_1
    const/4 v4, 0x1

    .line 76
    :goto_2
    if-eqz v4, :cond_3

    .line 77
    .line 78
    const v1, 0x7f13007a

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    const-string v4, "context.getString(R.string.ef_done)"

    .line 86
    .line 87
    invoke-static {v1, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_3
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 91
    .line 92
    .line 93
    iget-object v1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->c:Lt1/g;

    .line 94
    .line 95
    const/4 v4, 0x0

    .line 96
    if-eqz v1, :cond_8

    .line 97
    .line 98
    iget-object v1, v1, Lt1/g;->b:Lz1/b;

    .line 99
    .line 100
    if-eqz v1, :cond_7

    .line 101
    .line 102
    invoke-virtual {v1}, Lz1/b;->d()Z

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    if-nez v5, :cond_6

    .line 107
    .line 108
    iget-object v5, v1, Lz1/b;->e:Ls1/g;

    .line 109
    .line 110
    if-eqz v5, :cond_5

    .line 111
    .line 112
    iget-object v4, v5, Ls1/g;->e:Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    xor-int/2addr v4, v3

    .line 119
    iget-object v1, v1, Lz1/b;->b:Lt1/d;

    .line 120
    .line 121
    if-nez v4, :cond_4

    .line 122
    .line 123
    iget-boolean v4, v1, Lt1/d;->t:Z

    .line 124
    .line 125
    if-eqz v4, :cond_6

    .line 126
    .line 127
    :cond_4
    iget v1, v1, Lt1/d;->r:I

    .line 128
    .line 129
    const/4 v4, 0x2

    .line 130
    if-eq v1, v4, :cond_6

    .line 131
    .line 132
    const/4 v4, 0x4

    .line 133
    if-eq v1, v4, :cond_6

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_5
    const-string p1, "imageAdapter"

    .line 137
    .line 138
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw v4

    .line 142
    :cond_6
    const/4 v3, 0x0

    .line 143
    :goto_3
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 144
    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_7
    const-string p1, "recyclerViewManager"

    .line 148
    .line 149
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw v4

    .line 153
    :cond_8
    const-string p1, "imagePickerFragment"

    .line 154
    .line 155
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw v4

    .line 159
    :cond_9
    :goto_4
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    return p1
.end method
