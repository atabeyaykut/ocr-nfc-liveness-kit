.class public abstract Leb/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leb/s$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leb/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Leb/h;


# direct methods
.method public constructor <init>(Leb/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Leb/h$a;->a:Leb/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Llb/f;Llb/b;Llb/f;)V
    .locals 1

    .line 1
    new-instance v0, Lqb/k;

    .line 2
    .line 3
    invoke-direct {v0, p2, p3}, Lqb/k;-><init>(Llb/b;Llb/f;)V

    .line 4
    .line 5
    .line 6
    move-object p2, p0

    .line 7
    check-cast p2, Leb/i;

    .line 8
    .line 9
    iget-object p2, p2, Leb/i;->b:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final c(Llb/f;)Leb/s$b;
    .locals 2

    new-instance v0, Leb/h$a$a;

    iget-object v1, p0, Leb/h$a;->a:Leb/h;

    invoke-direct {v0, v1, p1, p0}, Leb/h$a$a;-><init>(Leb/h;Llb/f;Leb/h$a;)V

    return-object v0
.end method

.method public final d(Llb/b;Llb/f;)Leb/s$a;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lma/r0;->a:Lma/r0$a;

    iget-object v2, p0, Leb/h$a;->a:Leb/h;

    invoke-virtual {v2, p1, v1, v0}, Leb/h;->q(Llb/b;Lma/r0;Ljava/util/List;)Leb/i;

    move-result-object p1

    new-instance v1, Leb/g;

    invoke-direct {v1, p1, p0, p2, v0}, Leb/g;-><init>(Leb/i;Leb/h$a;Llb/f;Ljava/util/ArrayList;)V

    return-object v1
.end method

.method public final e(Ljava/lang/Object;Llb/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Leb/h$a;->a:Leb/h;

    .line 2
    .line 3
    invoke-static {v0, p2, p1}, Leb/h;->u(Leb/h;Llb/f;Ljava/lang/Object;)Lqb/g;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    move-object v0, p0

    .line 8
    check-cast v0, Leb/i;

    .line 9
    .line 10
    iget-object v0, v0, Leb/i;->b:Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final f(Llb/f;Lqb/f;)V
    .locals 1

    .line 1
    new-instance v0, Lqb/s;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Lqb/s;-><init>(Lqb/f;)V

    .line 4
    .line 5
    .line 6
    move-object p2, p0

    .line 7
    check-cast p2, Leb/i;

    .line 8
    .line 9
    iget-object p2, p2, Leb/i;->b:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public abstract g(Llb/f;Lqb/g;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llb/f;",
            "Lqb/g<",
            "*>;)V"
        }
    .end annotation
.end method
