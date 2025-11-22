.class public abstract Lp9/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp9/f$b;


# instance fields
.field private final key:Lp9/f$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp9/f$c<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp9/f$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp9/f$c<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp9/a;->key:Lp9/f$c;

    return-void
.end method


# virtual methods
.method public fold(Ljava/lang/Object;Lx9/p;)Ljava/lang/Object;
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

    .line 1
    const-string v0, "operation"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p2, p1, p0}, Lx9/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public get(Lp9/f$c;)Lp9/f$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lp9/f$b;",
            ">(",
            "Lp9/f$c<",
            "TE;>;)TE;"
        }
    .end annotation

    invoke-static {p0, p1}, Lp9/f$b$a;->a(Lp9/f$b;Lp9/f$c;)Lp9/f$b;

    move-result-object p1

    return-object p1
.end method

.method public getKey()Lp9/f$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lp9/f$c<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lp9/a;->key:Lp9/f$c;

    return-object v0
.end method

.method public minusKey(Lp9/f$c;)Lp9/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp9/f$c<",
            "*>;)",
            "Lp9/f;"
        }
    .end annotation

    invoke-static {p0, p1}, Lp9/f$b$a;->b(Lp9/f$b;Lp9/f$c;)Lp9/f;

    move-result-object p1

    return-object p1
.end method

.method public plus(Lp9/f;)Lp9/f;
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lp9/f$a;->a(Lp9/f;Lp9/f;)Lp9/f;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method
