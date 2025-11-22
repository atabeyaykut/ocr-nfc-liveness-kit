.class public final Lpa/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpa/c0;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpa/g0;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lpa/g0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpa/g0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2

    sget-object v0, Lm9/x;->a:Lm9/x;

    sget-object v1, Lm9/v;->a:Lm9/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpa/d0;->a:Ljava/util/List;

    iput-object v0, p0, Lpa/d0;->b:Ljava/util/Set;

    iput-object v1, p0, Lpa/d0;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpa/g0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lpa/d0;->a:Ljava/util/List;

    return-object v0
.end method

.method public final b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lpa/g0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lpa/d0;->b:Ljava/util/Set;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpa/g0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lpa/d0;->c:Ljava/util/List;

    return-object v0
.end method
