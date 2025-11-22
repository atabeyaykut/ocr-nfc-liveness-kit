.class Landroidx/camera/core/impl/utils/futures/ListFuture$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/core/impl/utils/futures/ListFuture;->init(Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/core/impl/utils/futures/ListFuture;

.field final synthetic val$index:I

.field final synthetic val$listenable:Lm5/a;


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/utils/futures/ListFuture;ILm5/a;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/core/impl/utils/futures/ListFuture$3;->this$0:Landroidx/camera/core/impl/utils/futures/ListFuture;

    iput p2, p0, Landroidx/camera/core/impl/utils/futures/ListFuture$3;->val$index:I

    iput-object p3, p0, Landroidx/camera/core/impl/utils/futures/ListFuture$3;->val$listenable:Lm5/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/core/impl/utils/futures/ListFuture$3;->this$0:Landroidx/camera/core/impl/utils/futures/ListFuture;

    iget v1, p0, Landroidx/camera/core/impl/utils/futures/ListFuture$3;->val$index:I

    iget-object v2, p0, Landroidx/camera/core/impl/utils/futures/ListFuture$3;->val$listenable:Lm5/a;

    invoke-virtual {v0, v1, v2}, Landroidx/camera/core/impl/utils/futures/ListFuture;->setOneValue(ILjava/util/concurrent/Future;)V

    return-void
.end method
