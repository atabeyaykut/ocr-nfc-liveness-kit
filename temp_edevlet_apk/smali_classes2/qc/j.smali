.class public final Lqc/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp9/f;


# instance fields
.field public final a:Ljava/lang/Throwable;

.field public final synthetic b:Lp9/f;


# direct methods
.method public constructor <init>(Lp9/f;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lqc/j;->a:Ljava/lang/Throwable;

    iput-object p1, p0, Lqc/j;->b:Lp9/f;

    return-void
.end method


# virtual methods
.method public final fold(Ljava/lang/Object;Lx9/p;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lx9/p<",
            "-TR;-",
            "Lp9/f$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    iget-object v0, p0, Lqc/j;->b:Lp9/f;

    invoke-interface {v0, p1, p2}, Lp9/f;->fold(Ljava/lang/Object;Lx9/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final get(Lp9/f$c;)Lp9/f$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lp9/f$b;",
            ">(",
            "Lp9/f$c<",
            "TE;>;)TE;"
        }
    .end annotation

    iget-object v0, p0, Lqc/j;->b:Lp9/f;

    invoke-interface {v0, p1}, Lp9/f;->get(Lp9/f$c;)Lp9/f$b;

    move-result-object p1

    return-object p1
.end method

.method public final minusKey(Lp9/f$c;)Lp9/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp9/f$c<",
            "*>;)",
            "Lp9/f;"
        }
    .end annotation

    iget-object v0, p0, Lqc/j;->b:Lp9/f;

    invoke-interface {v0, p1}, Lp9/f;->minusKey(Lp9/f$c;)Lp9/f;

    move-result-object p1

    return-object p1
.end method

.method public final plus(Lp9/f;)Lp9/f;
    .locals 1

    iget-object v0, p0, Lqc/j;->b:Lp9/f;

    invoke-interface {v0, p1}, Lp9/f;->plus(Lp9/f;)Lp9/f;

    move-result-object p1

    return-object p1
.end method
