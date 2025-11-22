.class public abstract Lma/o;
.super Lma/q;
.source "SourceFile"


# instance fields
.field public final a:Lma/e1;


# direct methods
.method public constructor <init>(Lma/e1;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lma/q;-><init>()V

    iput-object p1, p0, Lma/o;->a:Lma/e1;

    return-void
.end method


# virtual methods
.method public final a()Lma/e1;
    .locals 1

    iget-object v0, p0, Lma/o;->a:Lma/e1;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lma/o;->a:Lma/e1;

    invoke-virtual {v0}, Lma/e1;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lma/q;
    .locals 1

    iget-object v0, p0, Lma/o;->a:Lma/e1;

    invoke-virtual {v0}, Lma/e1;->c()Lma/e1;

    move-result-object v0

    invoke-static {v0}, Lma/p;->g(Lma/e1;)Lma/q;

    move-result-object v0

    return-object v0
.end method
