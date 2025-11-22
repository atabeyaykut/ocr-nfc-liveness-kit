.class public final enum Lka/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lka/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lka/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lka/c$a;

.field public static final enum d:Lka/c;

.field public static final enum e:Lka/c;

.field public static final enum f:Lka/c;

.field public static final enum g:Lka/c;

.field public static final synthetic h:[Lka/c;


# instance fields
.field public final a:Llb/c;

.field public final b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lka/c;

    sget-object v1, Lja/o;->k:Llb/c;

    const-string v2, "Function"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v2}, Lka/c;-><init>(Ljava/lang/String;ILlb/c;Ljava/lang/String;)V

    sput-object v0, Lka/c;->d:Lka/c;

    new-instance v1, Lka/c;

    sget-object v2, Lja/o;->e:Llb/c;

    const-string v4, "SuspendFunction"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v4}, Lka/c;-><init>(Ljava/lang/String;ILlb/c;Ljava/lang/String;)V

    sput-object v1, Lka/c;->e:Lka/c;

    new-instance v2, Lka/c;

    sget-object v4, Lja/o;->h:Llb/c;

    const-string v6, "KFunction"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4, v6}, Lka/c;-><init>(Ljava/lang/String;ILlb/c;Ljava/lang/String;)V

    sput-object v2, Lka/c;->f:Lka/c;

    new-instance v6, Lka/c;

    const-string v8, "KSuspendFunction"

    const/4 v9, 0x3

    invoke-direct {v6, v8, v9, v4, v8}, Lka/c;-><init>(Ljava/lang/String;ILlb/c;Ljava/lang/String;)V

    sput-object v6, Lka/c;->g:Lka/c;

    const/4 v4, 0x4

    new-array v4, v4, [Lka/c;

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    aput-object v6, v4, v9

    sput-object v4, Lka/c;->h:[Lka/c;

    new-instance v0, Lka/c$a;

    invoke-direct {v0}, Lka/c$a;-><init>()V

    sput-object v0, Lka/c;->c:Lka/c$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILlb/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lka/c;->a:Llb/c;

    iput-object p4, p0, Lka/c;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lka/c;
    .locals 1

    const-class v0, Lka/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lka/c;

    return-object p0
.end method

.method public static values()[Lka/c;
    .locals 1

    sget-object v0, Lka/c;->h:[Lka/c;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lka/c;

    return-object v0
.end method


# virtual methods
.method public final n(I)Llb/f;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lka/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    move-result-object p1

    return-object p1
.end method
