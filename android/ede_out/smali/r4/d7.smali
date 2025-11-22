.class public final enum Lr4/d7;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lr4/d7;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lr4/d7;

.field public static final synthetic b:[Lr4/d7;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lr4/d7;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr4/d7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr4/d7;->a:Lr4/d7;

    new-instance v1, Lr4/d7;

    const-string v3, "SIGNED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lr4/d7;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lr4/d7;

    const-string v5, "FIXED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lr4/d7;-><init>(Ljava/lang/String;I)V

    const/4 v5, 0x3

    new-array v5, v5, [Lr4/d7;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lr4/d7;->b:[Lr4/d7;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lr4/d7;
    .locals 1

    sget-object v0, Lr4/d7;->b:[Lr4/d7;

    invoke-virtual {v0}, [Lr4/d7;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr4/d7;

    return-object v0
.end method
