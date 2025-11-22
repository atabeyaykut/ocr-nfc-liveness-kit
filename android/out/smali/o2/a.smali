.class public final enum Lo2/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo2/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lo2/a;

.field public static final enum b:Lo2/a;

.field public static final synthetic c:[Lo2/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lo2/a;

    new-instance v1, Lo2/a;

    const-string v2, "GALLERY"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lo2/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lo2/a;->a:Lo2/a;

    aput-object v1, v0, v3

    new-instance v1, Lo2/a;

    const-string v2, "CAMERA"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lo2/a;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v3

    new-instance v1, Lo2/a;

    const-string v2, "BOTH"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lo2/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lo2/a;->b:Lo2/a;

    aput-object v1, v0, v3

    sput-object v0, Lo2/a;->c:[Lo2/a;

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

.method public static valueOf(Ljava/lang/String;)Lo2/a;
    .locals 1

    const-class v0, Lo2/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo2/a;

    return-object p0
.end method

.method public static values()[Lo2/a;
    .locals 1

    sget-object v0, Lo2/a;->c:[Lo2/a;

    invoke-virtual {v0}, [Lo2/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo2/a;

    return-object v0
.end method
