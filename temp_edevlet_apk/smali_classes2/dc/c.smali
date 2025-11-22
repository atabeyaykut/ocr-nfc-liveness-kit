.class public final Ldc/c;
.super Lcc/b1$b$a;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ldc/b;

.field public final synthetic b:Lcc/p1;


# direct methods
.method public constructor <init>(Ldc/b;Lcc/p1;)V
    .locals 0

    iput-object p1, p0, Ldc/c;->a:Ldc/b;

    iput-object p2, p0, Ldc/c;->b:Lcc/p1;

    invoke-direct {p0}, Lcc/b1$b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcc/b1;Lfc/h;)Lfc/i;
    .locals 2

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "type"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Ldc/c;->a:Ldc/b;

    invoke-interface {p1, p2}, Lfc/n;->Z(Lfc/h;)Lcc/m0;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.types.KotlinType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcc/t1;->c:Lcc/t1;

    iget-object v1, p0, Ldc/c;->b:Lcc/p1;

    invoke-virtual {v1, p2, v0}, Lcc/p1;->i(Lcc/e0;Lcc/t1;)Lcc/e0;

    move-result-object p2

    invoke-interface {p1, p2}, Ldc/b;->d(Lfc/h;)Lcc/m0;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    return-object p1
.end method
