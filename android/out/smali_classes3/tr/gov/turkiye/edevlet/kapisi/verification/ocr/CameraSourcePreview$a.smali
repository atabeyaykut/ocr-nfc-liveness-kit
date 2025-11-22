.class public final Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CameraSourcePreview$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CameraSourcePreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CameraSourcePreview;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CameraSourcePreview;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CameraSourcePreview$a;->a:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CameraSourcePreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    const-string v0, "surface"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CameraSourcePreview$a;->a:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CameraSourcePreview;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CameraSourcePreview;->c:Z

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CameraSourcePreview;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p1

    .line 16
    sget-object v0, Lyd/a;->a:Lyd/a$a;

    .line 17
    .line 18
    const-string v1, "Could not start camera source. "

    .line 19
    .line 20
    invoke-static {v1, p1}, Landroidx/room/util/a;->c(Ljava/lang/String;Ljava/io/IOException;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/4 v1, 0x0

    .line 25
    new-array v1, v1, [Ljava/lang/Object;

    .line 26
    .line 27
    invoke-virtual {v0, p1, v1}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    const-string v0, "surface"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CameraSourcePreview$a;->a:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CameraSourcePreview;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CameraSourcePreview;->c:Z

    .line 10
    .line 11
    return-void
.end method
