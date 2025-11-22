.class Landroidx/camera/core/SettableImageProxyBundle$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/core/SettableImageProxyBundle;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver<",
        "Landroidx/camera/core/ImageProxy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/core/SettableImageProxyBundle;

.field final synthetic val$captureId:I


# direct methods
.method public constructor <init>(Landroidx/camera/core/SettableImageProxyBundle;I)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/core/SettableImageProxyBundle$1;->this$0:Landroidx/camera/core/SettableImageProxyBundle;

    iput p2, p0, Landroidx/camera/core/SettableImageProxyBundle$1;->val$captureId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 3
    .param p1    # Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Landroidx/camera/core/ImageProxy;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/SettableImageProxyBundle$1;->this$0:Landroidx/camera/core/SettableImageProxyBundle;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/camera/core/SettableImageProxyBundle;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/SettableImageProxyBundle$1;->this$0:Landroidx/camera/core/SettableImageProxyBundle;

    .line 7
    .line 8
    iget-object v1, v1, Landroidx/camera/core/SettableImageProxyBundle;->mCompleters:Landroid/util/SparseArray;

    .line 9
    .line 10
    iget v2, p0, Landroidx/camera/core/SettableImageProxyBundle$1;->val$captureId:I

    .line 11
    .line 12
    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v0, "getImageProxy(id: "

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget v0, p0, Landroidx/camera/core/SettableImageProxyBundle$1;->val$captureId:I

    .line 24
    .line 25
    const-string v1, ")"

    .line 26
    .line 27
    invoke-static {p1, v0, v1}, Landroidx/browser/browseractions/a;->b(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw p1
.end method
