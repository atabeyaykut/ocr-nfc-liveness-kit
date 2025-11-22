.class public final Ldb/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ldb/w;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldb/w;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lm9/v;->a:Lm9/v;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Ldb/n;-><init>(Ldb/w;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ldb/w;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldb/w;",
            "Ljava/util/List<",
            "Ldb/w;",
            ">;)V"
        }
    .end annotation

    const-string v0, "parametersInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldb/n;->a:Ldb/w;

    iput-object p2, p0, Ldb/n;->b:Ljava/util/List;

    return-void
.end method
