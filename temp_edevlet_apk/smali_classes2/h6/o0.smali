.class public final Lh6/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/Callable;

.field public final synthetic b:Lh5/l;


# direct methods
.method public constructor <init>(Lh6/v;Lh5/l;)V
    .locals 0

    iput-object p1, p0, Lh6/o0;->a:Ljava/util/concurrent/Callable;

    iput-object p2, p0, Lh6/o0;->b:Lh5/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lh6/o0;->a:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh5/k;

    new-instance v1, Lh6/o0$a;

    invoke-direct {v1, p0}, Lh6/o0$a;-><init>(Lh6/o0;)V

    invoke-virtual {v0, v1}, Lh5/k;->f(Lh5/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lh6/o0;->b:Lh5/l;

    invoke-virtual {v1, v0}, Lh5/l;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
