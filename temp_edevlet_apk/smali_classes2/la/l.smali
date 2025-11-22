.class public final Lla/l;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Lcc/m0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lla/k;

.field public final synthetic b:Lbc/l;


# direct methods
.method public constructor <init>(Lla/k;Lbc/l;)V
    .locals 0

    iput-object p1, p0, Lla/l;->a:Lla/k;

    iput-object p2, p0, Lla/l;->b:Lbc/l;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lla/l;->a:Lla/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lla/k;->g()Lla/g$a;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v1, v1, Lla/g$a;->a:Lma/b0;

    .line 8
    .line 9
    sget-object v2, Lla/e;->d:Lla/e$a;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    sget-object v2, Lla/e;->h:Llb/b;

    .line 15
    .line 16
    new-instance v3, Lma/d0;

    .line 17
    .line 18
    invoke-virtual {v0}, Lla/k;->g()Lla/g$a;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v0, v0, Lla/g$a;->a:Lma/b0;

    .line 23
    .line 24
    iget-object v4, p0, Lla/l;->b:Lbc/l;

    .line 25
    .line 26
    invoke-direct {v3, v4, v0}, Lma/d0;-><init>(Lbc/l;Lma/b0;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v2, v3}, Lma/t;->c(Lma/b0;Llb/b;Lma/d0;)Lma/e;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0}, Lma/e;->q()Lcc/m0;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method
