.class public final Lud/e$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lud/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lud/e$c;
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
            "Lud/c0<",
            "TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lud/e$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lud/e$c$a;->a:Ljava/util/concurrent/CompletableFuture;

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

    iget-object p1, p0, Lud/e$c$a;->a:Ljava/util/concurrent/CompletableFuture;

    invoke-static {p1, p2}, Landroidx/core/app/h;->f(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onResponse(Lud/b;Lud/c0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lud/b<",
            "TR;>;",
            "Lud/c0<",
            "TR;>;)V"
        }
    .end annotation

    iget-object p1, p0, Lud/e$c$a;->a:Ljava/util/concurrent/CompletableFuture;

    invoke-static {p1, p2}, Landroidx/appcompat/widget/i;->i(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Object;)V

    return-void
.end method
