.class public final Lob/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldc/d$a;


# instance fields
.field public final a:Z

.field public final b:Lma/a;

.field public final c:Lma/a;


# direct methods
.method public constructor <init>(Lma/a;Lma/a;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lob/c;->a:Z

    iput-object p1, p0, Lob/c;->b:Lma/a;

    iput-object p2, p0, Lob/c;->c:Lma/a;

    return-void
.end method


# virtual methods
.method public final a(Lcc/c1;Lcc/c1;)Z
    .locals 4

    iget-object v0, p0, Lob/c;->b:Lma/a;

    const-string v1, "$a"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lob/c;->c:Lma/a;

    const-string v2, "$b"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "c1"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "c2"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lcc/c1;->n()Lma/g;

    move-result-object p1

    invoke-interface {p2}, Lcc/c1;->n()Lma/g;

    move-result-object p2

    instance-of v2, p1, Lma/w0;

    if-eqz v2, :cond_2

    instance-of v2, p2, Lma/w0;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Lob/g;->a:Lob/g;

    check-cast p1, Lma/w0;

    check-cast p2, Lma/w0;

    new-instance v3, Lob/e;

    invoke-direct {v3, v0, v1}, Lob/e;-><init>(Lma/a;Lma/a;)V

    iget-boolean v0, p0, Lob/c;->a:Z

    invoke-virtual {v2, p1, p2, v0, v3}, Lob/g;->b(Lma/w0;Lma/w0;ZLx9/p;)Z

    move-result p1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
