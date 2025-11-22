.class public final Lyb/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyb/j$a;
    }
.end annotation


# static fields
.field public static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Llb/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lyb/l;

.field public final b:Lbc/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lja/o$a;->c:Llb/d;

    invoke-virtual {v0}, Llb/d;->h()Llb/c;

    move-result-object v0

    invoke-static {v0}, Llb/b;->l(Llb/c;)Llb/b;

    move-result-object v0

    invoke-static {v0}, Lx5/a;->r(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lyb/j;->c:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lyb/l;)V
    .locals 1

    const-string v0, "components"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyb/j;->a:Lyb/l;

    new-instance v0, Lyb/j$b;

    invoke-direct {v0, p0}, Lyb/j$b;-><init>(Lyb/j;)V

    iget-object p1, p1, Lyb/l;->a:Lbc/l;

    invoke-interface {p1, v0}, Lbc/l;->e(Lx9/l;)Lbc/c$j;

    move-result-object p1

    iput-object p1, p0, Lyb/j;->b:Lbc/h;

    return-void
.end method


# virtual methods
.method public final a(Llb/b;Lyb/h;)Lma/e;
    .locals 1

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lyb/j$a;

    invoke-direct {v0, p1, p2}, Lyb/j$a;-><init>(Llb/b;Lyb/h;)V

    iget-object p1, p0, Lyb/j;->b:Lbc/h;

    invoke-interface {p1, v0}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lma/e;

    return-object p1
.end method
