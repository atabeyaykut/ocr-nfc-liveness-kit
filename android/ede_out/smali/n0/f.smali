.class public final Ln0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln0/h0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln0/h0<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ln0/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ln0/f;

    invoke-direct {v0}, Ln0/f;-><init>()V

    sput-object v0, Ln0/f;->a:Ln0/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lo0/c;F)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lo0/c;->k()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lo0/c;->a()V

    :cond_1
    invoke-virtual {p1}, Lo0/c;->g()D

    move-result-wide v1

    invoke-virtual {p1}, Lo0/c;->g()D

    move-result-wide v3

    invoke-virtual {p1}, Lo0/c;->g()D

    move-result-wide v5

    invoke-virtual {p1}, Lo0/c;->k()I

    move-result p2

    const/4 v7, 0x7

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    if-ne p2, v7, :cond_2

    invoke-virtual {p1}, Lo0/c;->g()D

    move-result-wide v10

    goto :goto_1

    :cond_2
    move-wide v10, v8

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lo0/c;->c()V

    :cond_3
    cmpg-double p1, v1, v8

    if-gtz p1, :cond_4

    cmpg-double p1, v3, v8

    if-gtz p1, :cond_4

    cmpg-double p1, v5, v8

    if-gtz p1, :cond_4

    const-wide p1, 0x406fe00000000000L    # 255.0

    mul-double v1, v1, p1

    mul-double v3, v3, p1

    mul-double v5, v5, p1

    cmpg-double v0, v10, v8

    if-gtz v0, :cond_4

    mul-double v10, v10, p1

    :cond_4
    double-to-int p1, v10

    double-to-int p2, v1

    double-to-int v0, v3

    double-to-int v1, v5

    invoke-static {p1, p2, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
