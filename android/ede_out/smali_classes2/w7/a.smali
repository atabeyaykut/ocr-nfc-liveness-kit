.class public final enum Lw7/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lw7/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic a:[Lw7/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lw7/a;

    const-string v1, "FACE_DETECTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lw7/a;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lw7/a;

    const-string v3, "SMART_REPLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lw7/a;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lw7/a;

    const-string v5, "TRANSLATE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lw7/a;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lw7/a;

    const-string v7, "ENTITY_EXTRACTION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lw7/a;-><init>(Ljava/lang/String;I)V

    const/4 v7, 0x4

    new-array v7, v7, [Lw7/a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lw7/a;->a:[Lw7/a;

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

.method public static values()[Lw7/a;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    sget-object v0, Lw7/a;->a:[Lw7/a;

    invoke-virtual {v0}, [Lw7/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw7/a;

    return-object v0
.end method
