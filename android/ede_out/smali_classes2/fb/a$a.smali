.class public final enum Lfb/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfb/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfb/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Ljava/util/LinkedHashMap;

.field public static final enum c:Lfb/a$a;

.field public static final enum d:Lfb/a$a;

.field public static final enum e:Lfb/a$a;

.field public static final enum f:Lfb/a$a;

.field public static final enum g:Lfb/a$a;

.field public static final enum h:Lfb/a$a;

.field public static final synthetic j:[Lfb/a$a;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lfb/a$a;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lfb/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfb/a$a;->c:Lfb/a$a;

    new-instance v1, Lfb/a$a;

    const-string v3, "CLASS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lfb/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lfb/a$a;->d:Lfb/a$a;

    new-instance v3, Lfb/a$a;

    const-string v5, "FILE_FACADE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lfb/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lfb/a$a;->e:Lfb/a$a;

    new-instance v5, Lfb/a$a;

    const-string v7, "SYNTHETIC_CLASS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lfb/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lfb/a$a;->f:Lfb/a$a;

    new-instance v7, Lfb/a$a;

    const-string v9, "MULTIFILE_CLASS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lfb/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lfb/a$a;->g:Lfb/a$a;

    new-instance v9, Lfb/a$a;

    const-string v11, "MULTIFILE_CLASS_PART"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lfb/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lfb/a$a;->h:Lfb/a$a;

    const/4 v11, 0x6

    new-array v11, v11, [Lfb/a$a;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lfb/a$a;->j:[Lfb/a$a;

    invoke-static {}, Lfb/a$a;->values()[Lfb/a$a;

    move-result-object v0

    array-length v1, v0

    invoke-static {v1}, Lb8/f;->V(I)I

    move-result v1

    const/16 v3, 0x10

    if-ge v1, v3, :cond_0

    const/16 v1, 0x10

    :cond_0
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    iget v5, v4, Lfb/a$a;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sput-object v3, Lfb/a$a;->b:Ljava/util/LinkedHashMap;

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

    iput p3, p0, Lfb/a$a;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfb/a$a;
    .locals 1

    const-class v0, Lfb/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfb/a$a;

    return-object p0
.end method

.method public static values()[Lfb/a$a;
    .locals 1

    sget-object v0, Lfb/a$a;->j:[Lfb/a$a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfb/a$a;

    return-object v0
.end method
