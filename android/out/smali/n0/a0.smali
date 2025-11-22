.class public final Ln0/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln0/h0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln0/h0<",
        "Lq0/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ln0/a0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ln0/a0;

    invoke-direct {v0}, Ln0/a0;-><init>()V

    sput-object v0, Ln0/a0;->a:Ln0/a0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lo0/c;F)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lo0/c;->k()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lo0/c;->a()V

    :cond_1
    invoke-virtual {p1}, Lo0/c;->g()D

    move-result-wide v2

    double-to-float v0, v2

    invoke-virtual {p1}, Lo0/c;->g()D

    move-result-wide v2

    double-to-float v2, v2

    :goto_1
    invoke-virtual {p1}, Lo0/c;->e()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lo0/c;->p()V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lo0/c;->c()V

    :cond_3
    new-instance p1, Lq0/d;

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    mul-float v0, v0, p2

    div-float/2addr v2, v1

    mul-float v2, v2, p2

    invoke-direct {p1, v0, v2}, Lq0/d;-><init>(FF)V

    return-object p1
.end method
