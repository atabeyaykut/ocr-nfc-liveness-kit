.class public final enum Lh7/a$b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lk4/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh7/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lh7/a$b;",
        ">;",
        "Lk4/k;"
    }
.end annotation


# static fields
.field public static final enum b:Lh7/a$b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final enum c:Lh7/a$b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final synthetic d:[Lh7/a$b;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lh7/a$b;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lh7/a$b;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lh7/a$b;

    const-string v3, "DATA_MESSAGE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lh7/a$b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lh7/a$b;->b:Lh7/a$b;

    new-instance v3, Lh7/a$b;

    const-string v5, "TOPIC"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lh7/a$b;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lh7/a$b;

    const-string v7, "DISPLAY_NOTIFICATION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lh7/a$b;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lh7/a$b;->c:Lh7/a$b;

    const/4 v7, 0x4

    new-array v7, v7, [Lh7/a$b;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lh7/a$b;->d:[Lh7/a$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lh7/a$b;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lh7/a$b;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-class v0, Lh7/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lh7/a$b;

    return-object p0
.end method

.method public static values()[Lh7/a$b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lh7/a$b;->d:[Lh7/a$b;

    invoke-virtual {v0}, [Lh7/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lh7/a$b;

    return-object v0
.end method


# virtual methods
.method public final f()I
    .locals 1

    iget v0, p0, Lh7/a$b;->a:I

    return v0
.end method
