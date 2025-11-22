.class public Lga/i0;
.super Lga/l0;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lga/i0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lga/l0<",
        "TV;>;",
        "Lx9/p;"
    }
.end annotation


# instance fields
.field public final m:Lga/t0$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lga/t0$b<",
            "Lga/i0$a<",
            "TD;TE;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lga/s;Lma/l0;)V
    .locals 1

    .line 1
    const-string v0, "container"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "descriptor"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p2}, Lga/l0;-><init>(Lga/s;Lma/l0;)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Lga/j0;

    .line 15
    .line 16
    invoke-direct {p1, p0}, Lga/j0;-><init>(Lga/i0;)V

    .line 17
    .line 18
    .line 19
    new-instance p2, Lga/t0$b;

    .line 20
    .line 21
    invoke-direct {p2, p1}, Lga/t0$b;-><init>(Lx9/a;)V

    .line 22
    .line 23
    .line 24
    iput-object p2, p0, Lga/i0;->m:Lga/t0$b;

    .line 25
    .line 26
    new-instance p1, Lga/k0;

    .line 27
    .line 28
    invoke-direct {p1, p0}, Lga/k0;-><init>(Lga/i0;)V

    .line 29
    .line 30
    .line 31
    const/4 p2, 0x2

    .line 32
    invoke-static {p2, p1}, Lc5/y;->v(ILx9/a;)Ll9/e;

    .line 33
    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;TE;)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lga/i0;->m:Lga/t0$b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lga/t0$b;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_getter()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Lga/i0$a;

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    new-array v1, v1, [Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    aput-object p1, v1, v2

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    aput-object p2, v1, p1

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lga/h;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method

.method public final t()Lga/l0$b;
    .locals 2

    iget-object v0, p0, Lga/i0;->m:Lga/t0$b;

    invoke-virtual {v0}, Lga/t0$b;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "_getter()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lga/i0$a;

    return-object v0
.end method
