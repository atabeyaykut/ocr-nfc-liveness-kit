.class public final Leb/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leb/s$a;


# instance fields
.field public final synthetic a:Leb/s$a;

.field public final synthetic b:Leb/s$a;

.field public final synthetic c:Leb/h$a;

.field public final synthetic d:Llb/f;

.field public final synthetic e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lna/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Leb/i;Leb/h$a;Llb/f;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Leb/g;->b:Leb/s$a;

    iput-object p2, p0, Leb/g;->c:Leb/h$a;

    iput-object p3, p0, Leb/g;->d:Llb/f;

    iput-object p4, p0, Leb/g;->e:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leb/g;->a:Leb/s$a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Leb/g;->b:Leb/s$a;

    invoke-interface {v0}, Leb/s$a;->a()V

    new-instance v0, Lqb/a;

    iget-object v1, p0, Leb/g;->e:Ljava/util/ArrayList;

    invoke-static {v1}, Lm9/t;->p1(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lna/c;

    invoke-direct {v0, v1}, Lqb/a;-><init>(Lna/c;)V

    iget-object v1, p0, Leb/g;->c:Leb/h$a;

    iget-object v2, p0, Leb/g;->d:Llb/f;

    invoke-virtual {v1, v2, v0}, Leb/h$a;->g(Llb/f;Lqb/g;)V

    return-void
.end method

.method public final b(Llb/f;Llb/b;Llb/f;)V
    .locals 1

    iget-object v0, p0, Leb/g;->a:Leb/s$a;

    invoke-interface {v0, p1, p2, p3}, Leb/s$a;->b(Llb/f;Llb/b;Llb/f;)V

    return-void
.end method

.method public final c(Llb/f;)Leb/s$b;
    .locals 1

    iget-object v0, p0, Leb/g;->a:Leb/s$a;

    invoke-interface {v0, p1}, Leb/s$a;->c(Llb/f;)Leb/s$b;

    move-result-object p1

    return-object p1
.end method

.method public final d(Llb/b;Llb/f;)Leb/s$a;
    .locals 1

    iget-object v0, p0, Leb/g;->a:Leb/s$a;

    invoke-interface {v0, p1, p2}, Leb/s$a;->d(Llb/b;Llb/f;)Leb/s$a;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/Object;Llb/f;)V
    .locals 1

    iget-object v0, p0, Leb/g;->a:Leb/s$a;

    invoke-interface {v0, p1, p2}, Leb/s$a;->e(Ljava/lang/Object;Llb/f;)V

    return-void
.end method

.method public final f(Llb/f;Lqb/f;)V
    .locals 1

    iget-object v0, p0, Leb/g;->a:Leb/s$a;

    invoke-interface {v0, p1, p2}, Leb/s$a;->f(Llb/f;Lqb/f;)V

    return-void
.end method
