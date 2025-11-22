.class public final Leb/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyb/i;


# instance fields
.field public final a:Leb/q;

.field public final b:Leb/k;


# direct methods
.method public constructor <init>(Lra/f;Leb/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leb/l;->a:Leb/q;

    iput-object p2, p0, Leb/l;->b:Leb/k;

    return-void
.end method


# virtual methods
.method public final a(Llb/b;)Lyb/h;
    .locals 2

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Leb/l;->a:Leb/q;

    invoke-static {v0, p1}, Leb/r;->a(Leb/q;Llb/b;)Leb/s;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {v0}, Leb/s;->c()Llb/b;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p1, p0, Leb/l;->b:Leb/k;

    invoke-virtual {p1, v0}, Leb/k;->f(Leb/s;)Lyb/h;

    move-result-object p1

    return-object p1
.end method
