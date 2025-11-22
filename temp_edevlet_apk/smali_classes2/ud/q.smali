.class public final Lud/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lud/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lud/d<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lnc/i;


# direct methods
.method public constructor <init>(Lnc/j;)V
    .locals 0

    iput-object p1, p0, Lud/q;->a:Lnc/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lud/b;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lud/b<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "t"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lc5/w;->j(Ljava/lang/Throwable;)Ll9/h$a;

    move-result-object p1

    iget-object p2, p0, Lud/q;->a:Lnc/i;

    invoke-interface {p2, p1}, Lp9/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public final onResponse(Lud/b;Lud/c0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lud/b<",
            "Ljava/lang/Object;",
            ">;",
            "Lud/c0<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "response"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p2, Lud/c0;->a:Lrc/b0;

    .line 12
    .line 13
    invoke-virtual {p1}, Lrc/b0;->c()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p2, Lud/c0;->b:Ljava/lang/Object;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Lud/k;

    .line 23
    .line 24
    invoke-direct {p1, p2}, Lud/k;-><init>(Lud/c0;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lc5/w;->j(Ljava/lang/Throwable;)Ll9/h$a;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :goto_0
    iget-object p2, p0, Lud/q;->a:Lnc/i;

    .line 32
    .line 33
    invoke-interface {p2, p1}, Lp9/d;->resumeWith(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
