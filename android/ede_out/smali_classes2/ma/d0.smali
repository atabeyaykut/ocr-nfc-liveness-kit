.class public final Lma/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lma/d0$a;,
        Lma/d0$b;
    }
.end annotation


# instance fields
.field public final a:Lbc/l;

.field public final b:Lma/b0;

.field public final c:Lbc/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbc/g<",
            "Llb/c;",
            "Lma/e0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lbc/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbc/g<",
            "Lma/d0$a;",
            "Lma/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbc/l;Lma/b0;)V
    .locals 1

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lma/d0;->a:Lbc/l;

    iput-object p2, p0, Lma/d0;->b:Lma/b0;

    new-instance p2, Lma/d0$d;

    invoke-direct {p2, p0}, Lma/d0$d;-><init>(Lma/d0;)V

    invoke-interface {p1, p2}, Lbc/l;->g(Lx9/l;)Lbc/c$k;

    move-result-object p2

    iput-object p2, p0, Lma/d0;->c:Lbc/g;

    new-instance p2, Lma/d0$c;

    invoke-direct {p2, p0}, Lma/d0$c;-><init>(Lma/d0;)V

    invoke-interface {p1, p2}, Lbc/l;->g(Lx9/l;)Lbc/c$k;

    move-result-object p1

    iput-object p1, p0, Lma/d0;->d:Lbc/g;

    return-void
.end method


# virtual methods
.method public final a(Llb/b;Ljava/util/List;)Lma/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llb/b;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lma/e;"
        }
    .end annotation

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lma/d0$a;

    invoke-direct {v0, p1, p2}, Lma/d0$a;-><init>(Llb/b;Ljava/util/List;)V

    iget-object p1, p0, Lma/d0;->d:Lbc/g;

    check-cast p1, Lbc/c$k;

    invoke-virtual {p1, v0}, Lbc/c$k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lma/e;

    return-object p1
.end method
