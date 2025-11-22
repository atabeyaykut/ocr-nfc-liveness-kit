.class public final Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralCameraSourcePreview;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralCameraSourcePreview$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u0008B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralCameraSourcePreview;",
        "Landroid/view/ViewGroup;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "a",
        "ui-id-verification_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field public final a:Landroid/view/SurfaceView;

.field public b:Z

.field public c:Z

.field public d:Lzh/e;

.field public e:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GraphicOverlay;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/view/SurfaceView;

    invoke-direct {p2, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralCameraSourcePreview;->a:Landroid/view/SurfaceView;

    invoke-virtual {p2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralCameraSourcePreview$a;

    invoke-direct {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralCameraSourcePreview$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralCameraSourcePreview;)V

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    sget-object v0, Lyd/a;->a:Lyd/a$a;

    const-string v1, "isPortraitMode returning false by default"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lyd/a$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method public final b()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralCameraSourcePreview;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralCameraSourcePreview;->c:Z

    .line 6
    .line 7
    if-eqz v0, :cond_6

    .line 8
    .line 9
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralCameraSourcePreview;->d:Lzh/e;

    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralCameraSourcePreview;->a:Landroid/view/SurfaceView;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    iget-object v2, v0, Lzh/e;->c:Landroid/hardware/Camera;

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v0}, Lzh/e;->a()Landroid/hardware/Camera;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iput-object v2, v0, Lzh/e;->c:Landroid/hardware/Camera;

    .line 31
    .line 32
    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, v0, Lzh/e;->c:Landroid/hardware/Camera;

    .line 36
    .line 37
    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 41
    .line 42
    .line 43
    new-instance v1, Ljava/lang/Thread;

    .line 44
    .line 45
    iget-object v2, v0, Lzh/e;->l:Lzh/e$b;

    .line 46
    .line 47
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 48
    .line 49
    .line 50
    iput-object v1, v0, Lzh/e;->k:Ljava/lang/Thread;

    .line 51
    .line 52
    iget-object v1, v0, Lzh/e;->l:Lzh/e$b;

    .line 53
    .line 54
    const/4 v2, 0x1

    .line 55
    invoke-virtual {v1, v2}, Lzh/e$b;->a(Z)V

    .line 56
    .line 57
    .line 58
    iget-object v1, v0, Lzh/e;->k:Ljava/lang/Thread;

    .line 59
    .line 60
    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    .line 66
    :goto_0
    monitor-exit v0

    .line 67
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralCameraSourcePreview;->e:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GraphicOverlay;

    .line 68
    .line 69
    if-eqz v0, :cond_5

    .line 70
    .line 71
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralCameraSourcePreview;->d:Lzh/e;

    .line 72
    .line 73
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, v0, Lzh/e;->f:Lq3/a;

    .line 77
    .line 78
    const/4 v1, 0x0

    .line 79
    if-eqz v0, :cond_1

    .line 80
    .line 81
    iget v2, v0, Lq3/a;->a:I

    .line 82
    .line 83
    iget v3, v0, Lq3/a;->b:I

    .line 84
    .line 85
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    goto :goto_1

    .line 94
    :cond_1
    move-object v2, v1

    .line 95
    :goto_1
    if-eqz v0, :cond_2

    .line 96
    .line 97
    iget v1, v0, Lq3/a;->a:I

    .line 98
    .line 99
    iget v0, v0, Lq3/a;->b:I

    .line 100
    .line 101
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    :cond_2
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralCameraSourcePreview;->a()Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_3

    .line 114
    .line 115
    if-eqz v2, :cond_4

    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v1, :cond_4

    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    goto :goto_2

    .line 128
    :cond_3
    if-eqz v1, :cond_4

    .line 129
    .line 130
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-eqz v2, :cond_4

    .line 135
    .line 136
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    :goto_2
    iget-object v2, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralCameraSourcePreview;->e:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GraphicOverlay;

    .line 141
    .line 142
    invoke-static {v2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    iget-object v3, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralCameraSourcePreview;->d:Lzh/e;

    .line 146
    .line 147
    invoke-static {v3}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2, v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GraphicOverlay;->b(II)V

    .line 151
    .line 152
    .line 153
    :cond_4
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralCameraSourcePreview;->e:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GraphicOverlay;

    .line 154
    .line 155
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GraphicOverlay;->a()V

    .line 159
    .line 160
    .line 161
    :cond_5
    const/4 v0, 0x0

    .line 162
    iput-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralCameraSourcePreview;->b:Z

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :catchall_0
    move-exception v1

    .line 166
    monitor-exit v0

    .line 167
    throw v1

    .line 168
    :cond_6
    :goto_3
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 8

    .line 1
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralCameraSourcePreview;->d:Lzh/e;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p1, Lzh/e;->f:Lq3/a;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget v0, p1, Lq3/a;->a:I

    .line 13
    .line 14
    iget p1, p1, Lq3/a;->b:I

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/16 v0, 0x140

    .line 18
    .line 19
    const/16 p1, 0xf0

    .line 20
    .line 21
    :goto_0
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralCameraSourcePreview;->a()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v7, v0

    .line 29
    move v0, p1

    .line 30
    move p1, v7

    .line 31
    :goto_1
    sub-int/2addr p4, p2

    .line 32
    sub-int/2addr p5, p3

    .line 33
    int-to-float p2, p4

    .line 34
    int-to-float p1, p1

    .line 35
    div-float/2addr p2, p1

    .line 36
    int-to-float p3, p5

    .line 37
    int-to-float v0, v0

    .line 38
    div-float/2addr p3, v0

    .line 39
    const/4 v1, 0x0

    .line 40
    cmpl-float v2, p2, p3

    .line 41
    .line 42
    if-lez v2, :cond_2

    .line 43
    .line 44
    mul-float v0, v0, p2

    .line 45
    .line 46
    float-to-int p1, v0

    .line 47
    sub-int p2, p1, p5

    .line 48
    .line 49
    div-int/lit8 p2, p2, 0x2

    .line 50
    .line 51
    const/4 p3, 0x0

    .line 52
    move p5, p1

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    mul-float p1, p1, p3

    .line 55
    .line 56
    float-to-int p1, p1

    .line 57
    sub-int p2, p1, p4

    .line 58
    .line 59
    div-int/lit8 p3, p2, 0x2

    .line 60
    .line 61
    const/4 p2, 0x0

    .line 62
    move p4, p1

    .line 63
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    const/4 v0, 0x0

    .line 68
    :goto_3
    if-ge v0, p1, :cond_3

    .line 69
    .line 70
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    mul-int/lit8 v3, p3, -0x1

    .line 75
    .line 76
    mul-int/lit8 v4, p2, -0x1

    .line 77
    .line 78
    sub-int v5, p4, p3

    .line 79
    .line 80
    sub-int v6, p5, p2

    .line 81
    .line 82
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 83
    .line 84
    .line 85
    add-int/lit8 v0, v0, 0x1

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralCameraSourcePreview;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    goto :goto_4

    .line 92
    :catch_0
    move-exception p1

    .line 93
    sget-object p2, Lyd/a;->a:Lyd/a$a;

    .line 94
    .line 95
    const-string p3, "Could not start camera source. "

    .line 96
    .line 97
    invoke-static {p3, p1}, Landroidx/room/util/a;->c(Ljava/lang/String;Ljava/io/IOException;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    new-array p3, v1, [Ljava/lang/Object;

    .line 102
    .line 103
    invoke-virtual {p2, p1, p3}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    :goto_4
    return-void
.end method
