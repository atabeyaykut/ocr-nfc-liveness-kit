.class public final Lud/e$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lud/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lud/e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lud/d<",
        "TR;>;"
    }
.end annotation

.annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lud/e$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lud/e$a$a;->a:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public final onFailure(Lud/b;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lud/b<",
            "TR;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    iget-object p1, p0, Lud/e$a$a;->a:Ljava/util/concurrent/CompletableFuture;

    invoke-static {p1, p2}, Landroidx/core/app/h;->f(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onResponse(Lud/b;Lud/c0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lud/b<",
            "TR;>;",
            "Lud/c0<",
            "TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p2, Lud/c0;->a:Lrc/b0;

    .line 2
    .line 3
    invoke-virtual {p1}, Lrc/b0;->c()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Lud/e$a$a;->a:Ljava/util/concurrent/CompletableFuture;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p2, Lud/c0;->b:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-static {v0, p1}, Landroidx/appcompat/widget/i;->i(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Lud/k;

    .line 18
    .line 19
    invoke-direct {p1, p2}, Lud/k;-><init>(Lud/c0;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0, p1}, Landroidx/camera/camera2/internal/compat/r;->n(Ljava/util/concurrent/CompletableFuture;Lud/k;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method
