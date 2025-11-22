.class public enum Lkotlin/reflect/jvm/internal/impl/load/java/e$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/load/java/e$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/reflect/jvm/internal/impl/load/java/e$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lkotlin/reflect/jvm/internal/impl/load/java/e$b;

.field public static final enum c:Lkotlin/reflect/jvm/internal/impl/load/java/e$b;

.field public static final enum d:Lkotlin/reflect/jvm/internal/impl/load/java/e$b;

.field public static final enum e:Lkotlin/reflect/jvm/internal/impl/load/java/e$b$a;

.field public static final synthetic f:[Lkotlin/reflect/jvm/internal/impl/load/java/e$b;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/e$b;

    const-string v1, "NULL"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/e$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/e$b;->b:Lkotlin/reflect/jvm/internal/impl/load/java/e$b;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/java/e$b;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "INDEX"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/e$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/e$b;->c:Lkotlin/reflect/jvm/internal/impl/load/java/e$b;

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/load/java/e$b;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v6, "FALSE"

    const/4 v7, 0x2

    invoke-direct {v3, v6, v7, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/e$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/load/java/e$b;->d:Lkotlin/reflect/jvm/internal/impl/load/java/e$b;

    new-instance v4, Lkotlin/reflect/jvm/internal/impl/load/java/e$b$a;

    invoke-direct {v4}, Lkotlin/reflect/jvm/internal/impl/load/java/e$b$a;-><init>()V

    sput-object v4, Lkotlin/reflect/jvm/internal/impl/load/java/e$b;->e:Lkotlin/reflect/jvm/internal/impl/load/java/e$b$a;

    const/4 v6, 0x4

    new-array v6, v6, [Lkotlin/reflect/jvm/internal/impl/load/java/e$b;

    aput-object v0, v6, v2

    aput-object v1, v6, v5

    aput-object v3, v6, v7

    const/4 v0, 0x3

    aput-object v4, v6, v0

    sput-object v6, Lkotlin/reflect/jvm/internal/impl/load/java/e$b;->f:[Lkotlin/reflect/jvm/internal/impl/load/java/e$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/load/java/e$b;->a:Ljava/lang/Object;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/java/e$b;
    .locals 1

    const-class v0, Lkotlin/reflect/jvm/internal/impl/load/java/e$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/java/e$b;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/load/java/e$b;
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/e$b;->f:[Lkotlin/reflect/jvm/internal/impl/load/java/e$b;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/jvm/internal/impl/load/java/e$b;

    return-object v0
.end method
