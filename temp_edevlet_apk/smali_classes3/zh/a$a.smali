.class public final Lzh/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzh/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lzh/a;


# direct methods
.method public constructor <init>(Lzh/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lzh/a$a;->a:Lzh/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 4

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "camera"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lzh/a$a;->a:Lzh/a;

    .line 12
    .line 13
    iget-object v0, v0, Lzh/a;->l:Lzh/a$b;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object v1, v0, Lzh/a$b;->a:Ljava/lang/Object;

    .line 19
    .line 20
    iget-object v2, v0, Lzh/a$b;->d:Lzh/a;

    .line 21
    .line 22
    monitor-enter v1

    .line 23
    :try_start_0
    iget-object v3, v0, Lzh/a$b;->c:Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {p2, v3}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 32
    .line 33
    .line 34
    const/4 p2, 0x0

    .line 35
    iput-object p2, v0, Lzh/a$b;->c:Ljava/nio/ByteBuffer;

    .line 36
    .line 37
    :cond_0
    iget-object p2, v2, Lzh/a;->o:Ljava/util/IdentityHashMap;

    .line 38
    .line 39
    invoke-virtual {p2, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-nez p2, :cond_1

    .line 44
    .line 45
    const-string p1, "MIDemoApp:CameraSource"

    .line 46
    .line 47
    const-string p2, "Skipping frame. Could not find ByteBuffer associated with the image data from the camera."

    .line 48
    .line 49
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object p2, v2, Lzh/a;->o:Ljava/util/IdentityHashMap;

    .line 54
    .line 55
    invoke-virtual {p2, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 60
    .line 61
    iput-object p1, v0, Lzh/a$b;->c:Ljava/nio/ByteBuffer;

    .line 62
    .line 63
    iget-object p1, v0, Lzh/a$b;->a:Ljava/lang/Object;

    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 66
    .line 67
    .line 68
    sget-object p1, Ll9/m;->a:Ll9/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    :goto_0
    monitor-exit v1

    .line 71
    return-void

    .line 72
    :catchall_0
    move-exception p1

    .line 73
    monitor-exit v1

    .line 74
    throw p1
.end method
