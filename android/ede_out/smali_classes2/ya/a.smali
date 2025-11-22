.class public final Lya/a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Lva/t;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lp4/g7;

.field public final synthetic b:Lma/f;


# direct methods
.method public constructor <init>(Lp4/g7;Lma/f;)V
    .locals 0

    iput-object p1, p0, Lya/a;->a:Lp4/g7;

    iput-object p2, p0, Lya/a;->b:Lma/f;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lya/a;->b:Lma/f;

    .line 2
    .line 3
    invoke-interface {v0}, Lna/a;->getAnnotations()Lna/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "<this>"

    .line 8
    .line 9
    iget-object v2, p0, Lya/a;->a:Lp4/g7;

    .line 10
    .line 11
    invoke-static {v2, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v1, "additionalAnnotations"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, v2, Lp4/g7;->a:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Lya/c;

    .line 22
    .line 23
    iget-object v1, v1, Lya/c;->q:Lva/e;

    .line 24
    .line 25
    iget-object v2, v2, Lp4/g7;->d:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v2, Ll9/e;

    .line 28
    .line 29
    invoke-interface {v2}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lva/t;

    .line 34
    .line 35
    invoke-virtual {v1, v2, v0}, Lva/b;->b(Lva/t;Ljava/lang/Iterable;)Lva/t;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method
