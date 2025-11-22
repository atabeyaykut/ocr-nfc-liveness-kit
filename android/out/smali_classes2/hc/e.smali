.class public final Lhc/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lma/w0;

.field public final b:Lcc/e0;

.field public final c:Lcc/e0;


# direct methods
.method public constructor <init>(Lma/w0;Lcc/e0;Lcc/e0;)V
    .locals 1

    const-string v0, "typeParameter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inProjection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outProjection"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhc/e;->a:Lma/w0;

    iput-object p2, p0, Lhc/e;->b:Lcc/e0;

    iput-object p3, p0, Lhc/e;->c:Lcc/e0;

    return-void
.end method
