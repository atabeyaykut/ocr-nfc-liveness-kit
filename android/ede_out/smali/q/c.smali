.class public final Lq/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq/f;


# instance fields
.field public final a:Lq/e;


# direct methods
.method public constructor <init>(Lq/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/c;->a:Lq/e;

    return-void
.end method


# virtual methods
.method public final b(Le/i;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Lq/c;->a:Lq/e;

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lq/c;

    if-eqz v1, :cond_1

    check-cast p1, Lq/c;

    iget-object p1, p1, Lq/c;->a:Lq/e;

    iget-object v1, p0, Lq/c;->a:Lq/e;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lq/c;->a:Lq/e;

    invoke-virtual {v0}, Lq/e;->hashCode()I

    move-result v0

    return v0
.end method
