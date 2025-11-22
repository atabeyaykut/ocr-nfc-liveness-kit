.class public final Lcc/s0;
.super Lcc/j1;
.source "SourceFile"


# instance fields
.field public final a:Lma/w0;

.field public final b:Ll9/e;


# direct methods
.method public constructor <init>(Lma/w0;)V
    .locals 1

    const-string v0, "typeParameter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcc/j1;-><init>()V

    iput-object p1, p0, Lcc/s0;->a:Lma/w0;

    new-instance p1, Lcc/s0$a;

    invoke-direct {p1, p0}, Lcc/s0$a;-><init>(Lcc/s0;)V

    const/4 v0, 0x2

    invoke-static {v0, p1}, Lc5/y;->v(ILx9/a;)Ll9/e;

    move-result-object p1

    iput-object p1, p0, Lcc/s0;->b:Ll9/e;

    return-void
.end method


# virtual methods
.method public final a(Ldc/f;)Lcc/i1;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final b()Lcc/t1;
    .locals 1

    sget-object v0, Lcc/t1;->e:Lcc/t1;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getType()Lcc/e0;
    .locals 1

    iget-object v0, p0, Lcc/s0;->b:Ll9/e;

    invoke-interface {v0}, Ll9/e;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcc/e0;

    return-object v0
.end method
