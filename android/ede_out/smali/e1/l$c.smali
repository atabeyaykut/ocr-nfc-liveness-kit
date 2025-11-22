.class public final Le1/l$c;
.super Le1/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le1/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Le1/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IIII)I
    .locals 2

    invoke-virtual {p0, p1, p2, p3, p4}, Le1/l$c;->b(IIII)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    sget-object v0, Le1/l;->a:Le1/l$e;

    invoke-virtual {v0, p1, p2, p3, p4}, Le1/l$e;->a(IIII)I

    move-result p1

    :goto_0
    return p1
.end method

.method public final b(IIII)F
    .locals 1

    sget-object v0, Le1/l;->a:Le1/l$e;

    invoke-virtual {v0, p1, p2, p3, p4}, Le1/l$e;->b(IIII)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method
