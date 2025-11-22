.class public Lga/h0;
.super Lga/l0;
.source "SourceFile"

# interfaces
.implements Lda/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lga/h0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lga/l0<",
        "TV;>;",
        "Lda/l<",
        "TT;TV;>;"
    }
.end annotation


# instance fields
.field public final m:Lga/t0$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lga/t0$b<",
            "Lga/h0$a<",
            "TT;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lga/s;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signature"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lga/l0;-><init>(Lga/s;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lga/h0$b;

    invoke-direct {p1, p0}, Lga/h0$b;-><init>(Lga/h0;)V

    .line 1
    new-instance p2, Lga/t0$b;

    invoke-direct {p2, p1}, Lga/t0$b;-><init>(Lx9/a;)V

    .line 2
    iput-object p2, p0, Lga/h0;->m:Lga/t0$b;

    new-instance p1, Lga/h0$c;

    invoke-direct {p1, p0}, Lga/h0$c;-><init>(Lga/h0;)V

    const/4 p2, 0x2

    invoke-static {p2, p1}, Lc5/y;->v(ILx9/a;)Ll9/e;

    return-void
.end method

.method public constructor <init>(Lga/s;Lma/l0;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lga/l0;-><init>(Lga/s;Lma/l0;)V

    new-instance p1, Lga/h0$b;

    invoke-direct {p1, p0}, Lga/h0$b;-><init>(Lga/h0;)V

    .line 3
    new-instance p2, Lga/t0$b;

    invoke-direct {p2, p1}, Lga/t0$b;-><init>(Lx9/a;)V

    .line 4
    iput-object p2, p0, Lga/h0;->m:Lga/t0$b;

    new-instance p1, Lga/h0$c;

    invoke-direct {p1, p0}, Lga/h0$c;-><init>(Lga/h0;)V

    const/4 p2, 0x2

    invoke-static {p2, p1}, Lc5/y;->v(ILx9/a;)Ll9/e;

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lga/h0;->u()Lga/h0$a;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lga/h;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lga/h0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic l()Lda/l$a;
    .locals 1

    invoke-virtual {p0}, Lga/h0;->u()Lga/h0$a;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic t()Lga/l0$b;
    .locals 1

    invoke-virtual {p0}, Lga/h0;->u()Lga/h0$a;

    move-result-object v0

    return-object v0
.end method

.method public final u()Lga/h0$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lga/h0$a<",
            "TT;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lga/h0;->m:Lga/t0$b;

    invoke-virtual {v0}, Lga/t0$b;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "_getter()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lga/h0$a;

    return-object v0
.end method
