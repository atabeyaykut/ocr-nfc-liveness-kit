.class public final Lm3/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Lm3/u;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lm3/u;

    sget-object v1, Lm3/y;->a:Lm3/s;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lm3/y;->b:Lm3/t;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lm3/x;->a:[Lm3/u;

    return-void
.end method
