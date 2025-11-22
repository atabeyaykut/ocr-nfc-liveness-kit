.class public Lqb/b;
.super Lqb/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lqb/g<",
        "Ljava/util/List<",
        "+",
        "Lqb/g<",
        "*>;>;>;"
    }
.end annotation


# instance fields
.field public final b:Lx9/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/l<",
            "Lma/b0;",
            "Lcc/e0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lx9/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lqb/g<",
            "*>;>;",
            "Lx9/l<",
            "-",
            "Lma/b0;",
            "+",
            "Lcc/e0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "computeType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lqb/g;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lqb/b;->b:Lx9/l;

    return-void
.end method


# virtual methods
.method public final a(Lma/b0;)Lcc/e0;
    .locals 1

    .line 1
    const-string v0, "module"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lqb/b;->b:Lx9/l;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcc/e0;

    .line 13
    .line 14
    invoke-static {p1}, Lja/k;->y(Lcc/e0;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    invoke-static {p1}, Lja/k;->F(Lcc/e0;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    sget-object v0, Lja/o$a;->V:Llb/c;

    .line 27
    .line 28
    invoke-virtual {v0}, Llb/c;->i()Llb/d;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {p1, v0}, Lja/k;->B(Lcc/e0;Llb/d;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    sget-object v0, Lja/o$a;->W:Llb/c;

    .line 39
    .line 40
    invoke-virtual {v0}, Llb/c;->i()Llb/d;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {p1, v0}, Lja/k;->B(Lcc/e0;Llb/d;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_0

    .line 49
    .line 50
    sget-object v0, Lja/o$a;->X:Llb/c;

    .line 51
    .line 52
    invoke-virtual {v0}, Llb/c;->i()Llb/d;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {p1, v0}, Lja/k;->B(Lcc/e0;Llb/d;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_0

    .line 61
    .line 62
    sget-object v0, Lja/o$a;->Y:Llb/c;

    .line 63
    .line 64
    invoke-virtual {v0}, Llb/c;->i()Llb/d;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {p1, v0}, Lja/k;->B(Lcc/e0;Llb/d;)Z

    .line 69
    .line 70
    .line 71
    :cond_0
    return-object p1
.end method
