.class public final Lg0/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg0/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lg0/a$c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lq0/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq0/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public b:F


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lq0/a<",
            "TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lg0/a$e;->b:F

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq0/a;

    iput-object p1, p0, Lg0/a$e;->a:Lq0/a;

    return-void
.end method


# virtual methods
.method public final a(F)Z
    .locals 1

    iget v0, p0, Lg0/a$e;->b:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iput p1, p0, Lg0/a$e;->b:F

    const/4 p1, 0x0

    return p1
.end method

.method public final b()Lq0/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq0/a<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lg0/a$e;->a:Lq0/a;

    return-object v0
.end method

.method public final c(F)Z
    .locals 0

    iget-object p1, p0, Lg0/a$e;->a:Lq0/a;

    invoke-virtual {p1}, Lq0/a;->c()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final d()F
    .locals 1

    iget-object v0, p0, Lg0/a$e;->a:Lq0/a;

    invoke-virtual {v0}, Lq0/a;->a()F

    move-result v0

    return v0
.end method

.method public final e()F
    .locals 1

    iget-object v0, p0, Lg0/a$e;->a:Lq0/a;

    invoke-virtual {v0}, Lq0/a;->b()F

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
