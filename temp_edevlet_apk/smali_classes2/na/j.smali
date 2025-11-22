.class public final Lna/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lna/c;


# instance fields
.field public final a:Lja/k;

.field public final b:Llb/c;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Llb/f;",
            "Lqb/g<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final d:Ll9/e;


# direct methods
.method public constructor <init>(Lja/k;Llb/c;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lja/k;",
            "Llb/c;",
            "Ljava/util/Map<",
            "Llb/f;",
            "+",
            "Lqb/g<",
            "*>;>;)V"
        }
    .end annotation

    const-string v0, "fqName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lna/j;->a:Lja/k;

    iput-object p2, p0, Lna/j;->b:Llb/c;

    iput-object p3, p0, Lna/j;->c:Ljava/util/Map;

    new-instance p1, Lna/j$a;

    invoke-direct {p1, p0}, Lna/j$a;-><init>(Lna/j;)V

    const/4 p2, 0x2

    invoke-static {p2, p1}, Lc5/y;->v(ILx9/a;)Ll9/e;

    move-result-object p1

    iput-object p1, p0, Lna/j;->d:Ll9/e;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Llb/f;",
            "Lqb/g<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lna/j;->c:Ljava/util/Map;

    return-object v0
.end method

.method public final d()Llb/c;
    .locals 1

    iget-object v0, p0, Lna/j;->b:Llb/c;

    return-object v0
.end method

.method public final getSource()Lma/r0;
    .locals 1

    sget-object v0, Lma/r0;->a:Lma/r0$a;

    return-object v0
.end method

.method public final getType()Lcc/e0;
    .locals 2

    iget-object v0, p0, Lna/j;->d:Ll9/e;

    invoke-interface {v0}, Ll9/e;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-type>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcc/e0;

    return-object v0
.end method
