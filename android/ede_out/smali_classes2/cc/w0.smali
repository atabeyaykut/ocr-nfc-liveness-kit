.class public final Lcc/w0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcc/w0$a;
    }
.end annotation


# instance fields
.field public final a:Lcc/w0;

.field public final b:Lma/v0;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcc/i1;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lma/w0;",
            "Lcc/i1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcc/w0;Lma/v0;Ljava/util/List;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcc/w0;->a:Lcc/w0;

    iput-object p2, p0, Lcc/w0;->b:Lma/v0;

    iput-object p3, p0, Lcc/w0;->c:Ljava/util/List;

    iput-object p4, p0, Lcc/w0;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lma/v0;)Z
    .locals 2

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcc/w0;->b:Lma/v0;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lcc/w0;->a:Lcc/w0;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcc/w0;->a(Lma/v0;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method
