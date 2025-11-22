.class public final Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Lme/c;",
        "event",
        "Ll9/m;",
        "onEvent",
        "<init>",
        "()V",
        "ui-barcode_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final synthetic j:I


# instance fields
.field public a:Lm5/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm5/a<",
            "Landroidx/camera/lifecycle/ProcessCameraProvider;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ll9/e;

.field public c:Ljava/util/concurrent/ExecutorService;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public final h:Lff/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity$e;

    invoke-direct {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity$e;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lc5/y;->v(ILx9/a;)Ll9/e;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;->b:Ll9/e;

    new-instance v0, Lff/b;

    invoke-direct {v0, p0}, Lff/b;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;->h:Lff/b;

    return-void
.end method


# virtual methods
.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "newBase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;->h:Lff/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lff/b;->f(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final getApplicationContext()Landroid/content/Context;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "super.getApplicationContext()"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;->h:Lff/b;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lff/d;->a(Landroid/content/Context;)Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "super.getResources()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;->h:Lff/b;

    invoke-virtual {v1, v0}, Lff/b;->b(Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;->h:Lff/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lff/b;->d()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;->t()Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/ActivityBarcodeScanningBinding;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/ActivityBarcodeScanningBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    const-string v0, "comingFromService"

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iput-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;->e:Z

    .line 32
    .line 33
    const-string v0, "isFromLogin"

    .line 34
    .line 35
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iput-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;->f:Z

    .line 40
    .line 41
    const-string v0, "justReturnQRContent"

    .line 42
    .line 43
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    iput-boolean p1, p0, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;->g:Z

    .line 48
    .line 49
    :cond_0
    iget-boolean p1, p0, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;->e:Z

    .line 50
    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;->t()Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/ActivityBarcodeScanningBinding;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/ActivityBarcodeScanningBinding;->f:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 58
    .line 59
    const v0, 0x7f130028

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;->t()Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/ActivityBarcodeScanningBinding;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/ActivityBarcodeScanningBinding;->f:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 68
    .line 69
    const v0, 0x7f13002a

    .line 70
    .line 71
    .line 72
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;->t()Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/ActivityBarcodeScanningBinding;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/ActivityBarcodeScanningBinding;->f:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 84
    .line 85
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;->t()Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/ActivityBarcodeScanningBinding;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/ActivityBarcodeScanningBinding;->f:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 93
    .line 94
    new-instance v0, Lzd/d;

    .line 95
    .line 96
    const/4 v1, 0x2

    .line 97
    invoke-direct {v0, v1, p0}, Lzd/d;-><init>(ILjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    .line 102
    .line 103
    invoke-static {p0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->getInstance(Landroid/content/Context;)Lm5/a;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    const-string v0, "getInstance(this)"

    .line 108
    .line 109
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;->a:Lm5/a;

    .line 113
    .line 114
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    const-string v0, "newSingleThreadExecutor()"

    .line 119
    .line 120
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;->c:Ljava/util/concurrent/ExecutorService;

    .line 124
    .line 125
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;->a:Lm5/a;

    .line 126
    .line 127
    if-eqz p1, :cond_2

    .line 128
    .line 129
    new-instance v0, Landroidx/activity/a;

    .line 130
    .line 131
    invoke-direct {v0, p0, v1}, Landroidx/activity/a;-><init>(Landroid/view/KeyEvent$Callback;I)V

    .line 132
    .line 133
    .line 134
    invoke-static {p0}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-interface {p1, v0, v2}, Lm5/a;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;->t()Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/ActivityBarcodeScanningBinding;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/ActivityBarcodeScanningBinding;->d:Ltr/gov/turkiye/edevlet/kapisi/barcode/camera/ViewFinderOverlay;

    .line 146
    .line 147
    new-instance v0, Landroidx/core/app/a;

    .line 148
    .line 149
    invoke-direct {v0, p0, v1}, Landroidx/core/app/a;-><init>(Landroid/view/KeyEvent$Callback;I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :cond_2
    const-string p1, "cameraProviderFuture"

    .line 157
    .line 158
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    const/4 p1, 0x0

    .line 162
    throw p1
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;->c:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void

    :cond_0
    const-string v0, "cameraExecutor"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final onEvent(Lme/c;)V
    .locals 5
    .annotation runtime Lqd/i;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;->t()Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/ActivityBarcodeScanningBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/ActivityBarcodeScanningBinding;->e:Landroid/widget/ProgressBar;

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    if-eqz p1, :cond_9

    .line 13
    .line 14
    iget-boolean v0, p1, Lme/c;->a:Z

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_4

    .line 18
    .line 19
    const v0, 0x7f1300a0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v2, "getString(R.string.filename_pdf)"

    .line 27
    .line 28
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p1, Lme/c;->b:Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeData;

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeData;->getDocumentContent()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move-object p1, v1

    .line 41
    :goto_0
    const/4 v2, 0x1

    .line 42
    const/4 v3, 0x0

    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-nez v4, :cond_1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const/4 v4, 0x0

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    :goto_1
    const/4 v4, 0x1

    .line 55
    :goto_2
    if-nez v4, :cond_3

    .line 56
    .line 57
    const-string v4, "content"

    .line 58
    .line 59
    invoke-static {p1, v4}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p1}, Lje/a;->a(Ljava/lang/String;)[B

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    :try_start_0
    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    goto :goto_3

    .line 74
    :catchall_0
    move-exception p1

    .line 75
    goto :goto_4

    .line 76
    :catch_0
    const/4 v2, 0x0

    .line 77
    :goto_3
    :try_start_1
    sget-object p1, Ll9/m;->a:Ll9/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    .line 79
    invoke-static {v3, v1}, Lx5/a;->f(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    if-eqz v2, :cond_9

    .line 83
    .line 84
    invoke-static {p0, v0}, Lde/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 88
    .line 89
    .line 90
    goto :goto_6

    .line 91
    :goto_4
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 92
    :catchall_1
    move-exception v0

    .line 93
    invoke-static {v3, p1}, Lx5/a;->f(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    throw v0

    .line 97
    :cond_3
    invoke-virtual {p0, v1}, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;->u(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    goto :goto_6

    .line 101
    :cond_4
    iget-object p1, p1, Lme/c;->c:Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 102
    .line 103
    if-eqz p1, :cond_5

    .line 104
    .line 105
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;->getThrowable()Ljava/lang/Throwable;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    goto :goto_5

    .line 110
    :cond_5
    move-object p1, v1

    .line 111
    :goto_5
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    .line 112
    .line 113
    if-eqz v0, :cond_7

    .line 114
    .line 115
    const-string p1, "action.login.open"

    .line 116
    .line 117
    const v0, 0x8000

    .line 118
    .line 119
    .line 120
    invoke-static {p1, v0}, Landroid/support/v4/media/a;->b(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 125
    .line 126
    const/16 v1, 0x22

    .line 127
    .line 128
    if-lt v0, v1, :cond_6

    .line 129
    .line 130
    const-string v0, "tr.gov.turkiye.edevlet.kapisi"

    .line 131
    .line 132
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    .line 134
    .line 135
    :cond_6
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 139
    .line 140
    .line 141
    goto :goto_6

    .line 142
    :cond_7
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    .line 143
    .line 144
    if-eqz v0, :cond_8

    .line 145
    .line 146
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    .line 147
    .line 148
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;->getErrorMessage()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    :cond_8
    invoke-virtual {p0, v1}, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;->u(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    :cond_9
    :goto_6
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    const-class v0, Lme/c;

    .line 160
    .line 161
    invoke-virtual {p1, v0}, Lqd/b;->l(Ljava/lang/Class;)V

    .line 162
    .line 163
    .line 164
    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lqd/b;->e(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lqd/b;->n(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lqd/b;->e(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lqd/b;->k(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final s(Landroidx/camera/lifecycle/ProcessCameraProvider;)V
    .locals 8

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->unbindAll()V

    :cond_1
    new-instance v0, Landroidx/camera/core/Preview$Builder;

    invoke-direct {v0}, Landroidx/camera/core/Preview$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/camera/core/Preview$Builder;->build()Landroidx/camera/core/Preview;

    move-result-object v0

    const-string v1, "Builder()\n            .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroidx/camera/core/CameraSelector$Builder;

    invoke-direct {v1}, Landroidx/camera/core/CameraSelector$Builder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/camera/core/CameraSelector$Builder;->requireLensFacing(I)Landroidx/camera/core/CameraSelector$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/core/CameraSelector$Builder;->build()Landroidx/camera/core/CameraSelector;

    move-result-object v1

    const-string v3, "Builder()\n            .r\u2026ACK)\n            .build()"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Landroidx/camera/core/ImageAnalysis$Builder;

    invoke-direct {v3}, Landroidx/camera/core/ImageAnalysis$Builder;-><init>()V

    new-instance v4, Landroid/util/Size;

    const/16 v5, 0x500

    const/16 v6, 0x2d0

    invoke-direct {v4, v5, v6}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v3, v4}, Landroidx/camera/core/ImageAnalysis$Builder;->setTargetResolution(Landroid/util/Size;)Landroidx/camera/core/ImageAnalysis$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/camera/core/ImageAnalysis$Builder;->setBackpressureStrategy(I)Landroidx/camera/core/ImageAnalysis$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/camera/core/ImageAnalysis$Builder;->build()Landroidx/camera/core/ImageAnalysis;

    move-result-object v3

    const-string v5, "Builder()\n            .s\u2026EST)\n            .build()"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity$c;

    invoke-direct {v5, p0, v3}, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity$c;-><init>(Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;Landroidx/camera/core/ImageAnalysis;)V

    invoke-virtual {v5}, Landroid/view/OrientationEventListener;->enable()V

    new-instance v5, Lae/a;

    new-instance v6, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity$b;

    invoke-direct {v6, v3, p1, p0}, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity$b;-><init>(Landroidx/camera/core/ImageAnalysis;Landroidx/camera/lifecycle/ProcessCameraProvider;Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;)V

    invoke-direct {v5, v6}, Lae/a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity$b;)V

    iget-object v6, p0, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;->c:Ljava/util/concurrent/ExecutorService;

    const/4 v7, 0x0

    if-eqz v6, :cond_5

    invoke-virtual {v3, v6, v5}, Landroidx/camera/core/ImageAnalysis;->setAnalyzer(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageAnalysis$Analyzer;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;->t()Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/ActivityBarcodeScanningBinding;

    move-result-object v5

    iget-object v5, v5, Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/ActivityBarcodeScanningBinding;->b:Landroidx/camera/view/PreviewView;

    invoke-virtual {v5}, Landroidx/camera/view/PreviewView;->getSurfaceProvider()Landroidx/camera/core/Preview$SurfaceProvider;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/camera/core/Preview;->setSurfaceProvider(Landroidx/camera/core/Preview$SurfaceProvider;)V

    if-eqz p1, :cond_2

    const/4 v5, 0x2

    new-array v5, v5, [Landroidx/camera/core/UseCase;

    aput-object v3, v5, v4

    aput-object v0, v5, v2

    invoke-virtual {p1, p0, v1, v5}, Landroidx/camera/lifecycle/ProcessCameraProvider;->bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;[Landroidx/camera/core/UseCase;)Landroidx/camera/core/Camera;

    move-result-object v7

    :cond_2
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroidx/camera/core/Camera;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroidx/camera/core/CameraInfo;->hasFlashUnit()Z

    move-result p1

    if-ne p1, v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;->t()Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/ActivityBarcodeScanningBinding;

    move-result-object p1

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/ActivityBarcodeScanningBinding;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;->t()Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/ActivityBarcodeScanningBinding;

    move-result-object p1

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/ActivityBarcodeScanningBinding;->c:Landroid/widget/ImageView;

    new-instance v0, Lce/a;

    invoke-direct {v0, v4, v7, p0}, Lce/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-interface {v7}, Landroidx/camera/core/Camera;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    move-result-object p1

    invoke-interface {p1}, Landroidx/camera/core/CameraInfo;->getTorchState()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity$a;

    invoke-direct {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;)V

    new-instance v1, Lce/b;

    invoke-direct {v1, v0}, Lce/b;-><init>(Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity$a;)V

    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_4
    return-void

    :cond_5
    const-string p1, "cameraExecutor"

    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    throw v7

    :cond_6
    :goto_1
    return-void
.end method

.method public final t()Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/ActivityBarcodeScanningBinding;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;->b:Ll9/e;

    invoke-interface {v0}, Ll9/e;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/ActivityBarcodeScanningBinding;

    return-object v0
.end method

.method public final u(Ljava/lang/String;)V
    .locals 5

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d010a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "inflater.inflate(R.layou\u2026esult_error_dialog, null)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0a0367

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-nez v4, :cond_2

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    const p1, 0x7f130023

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    new-instance p1, Lv/e;

    invoke-direct {p1, p0}, Lv/e;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lc5/u;->n(Lv/e;Landroid/view/View;)V

    invoke-virtual {p1}, Lv/e;->show()V

    invoke-virtual {p1, v3}, Lv/e;->b(Z)V

    const v0, 0x7f130020

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {p1, v0, v2, v2, v1}, Lv/e;->e(Lv/e;Ljava/lang/Integer;Ljava/lang/String;Lx9/l;I)V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity$d;

    invoke-direct {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity$d;-><init>(Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;)V

    const/4 v1, 0x3

    invoke-static {p1, v2, v2, v0, v1}, Lv/e;->e(Lv/e;Ljava/lang/Integer;Ljava/lang/String;Lx9/l;I)V

    return-void
.end method
