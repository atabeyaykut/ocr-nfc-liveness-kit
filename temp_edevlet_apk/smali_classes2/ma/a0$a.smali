.class public final Lma/a0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lma/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(ZZZ)Lma/a0;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Lma/a0;->b:Lma/a0;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    sget-object p0, Lma/a0;->d:Lma/a0;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    sget-object p0, Lma/a0;->c:Lma/a0;

    goto :goto_0

    :cond_2
    sget-object p0, Lma/a0;->a:Lma/a0;

    :goto_0
    return-object p0
.end method
