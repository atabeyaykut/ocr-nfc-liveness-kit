.class public final Lu5/i;
.super Lcom/google/crypto/tink/shaded/protobuf/x;
.source "SourceFile"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/r0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu5/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/x<",
        "Lu5/i;",
        "Lu5/i$a;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/r0;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lu5/i;

.field public static final KEY_VALUE_FIELD_NUMBER:I = 0x3

.field public static final PARAMS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/y0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/y0<",
            "Lu5/i;",
            ">;"
        }
    .end annotation
.end field

.field public static final VERSION_FIELD_NUMBER:I = 0x1


# instance fields
.field private keyValue_:Lcom/google/crypto/tink/shaded/protobuf/i;

.field private params_:Lu5/k;

.field private version_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lu5/i;

    invoke-direct {v0}, Lu5/i;-><init>()V

    sput-object v0, Lu5/i;->DEFAULT_INSTANCE:Lu5/i;

    const-class v1, Lu5/i;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/x;->r(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/x;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/x;-><init>()V

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/i;->b:Lcom/google/crypto/tink/shaded/protobuf/i$f;

    iput-object v0, p0, Lu5/i;->keyValue_:Lcom/google/crypto/tink/shaded/protobuf/i;

    return-void
.end method

.method public static A()Lu5/i$a;
    .locals 1

    sget-object v0, Lu5/i;->DEFAULT_INSTANCE:Lu5/i;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/x;->k()Lcom/google/crypto/tink/shaded/protobuf/x$a;

    move-result-object v0

    check-cast v0, Lu5/i$a;

    return-object v0
.end method

.method public static B(Lcom/google/crypto/tink/shaded/protobuf/i;Lcom/google/crypto/tink/shaded/protobuf/p;)Lu5/i;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/a0;
        }
    .end annotation

    sget-object v0, Lu5/i;->DEFAULT_INSTANCE:Lu5/i;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/x;->o(Lcom/google/crypto/tink/shaded/protobuf/x;Lcom/google/crypto/tink/shaded/protobuf/i;Lcom/google/crypto/tink/shaded/protobuf/p;)Lcom/google/crypto/tink/shaded/protobuf/x;

    move-result-object p0

    check-cast p0, Lu5/i;

    return-object p0
.end method

.method public static synthetic s()Lu5/i;
    .locals 1

    sget-object v0, Lu5/i;->DEFAULT_INSTANCE:Lu5/i;

    return-object v0
.end method

.method public static t(Lu5/i;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lu5/i;->version_:I

    return-void
.end method

.method public static u(Lu5/i;Lu5/k;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lu5/i;->params_:Lu5/k;

    .line 8
    .line 9
    return-void
.end method

.method public static v(Lu5/i;Lcom/google/crypto/tink/shaded/protobuf/i$f;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lu5/i;->keyValue_:Lcom/google/crypto/tink/shaded/protobuf/i;

    .line 5
    .line 6
    return-void
.end method

.method public static w()Lu5/i;
    .locals 1

    sget-object v0, Lu5/i;->DEFAULT_INSTANCE:Lu5/i;

    return-object v0
.end method


# virtual methods
.method public final l(Lcom/google/crypto/tink/shaded/protobuf/x$f;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 12
    .line 13
    .line 14
    throw p1

    .line 15
    :pswitch_0
    sget-object p1, Lu5/i;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/y0;

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    const-class v0, Lu5/i;

    .line 20
    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    sget-object p1, Lu5/i;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/y0;

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/x$b;

    .line 27
    .line 28
    sget-object v1, Lu5/i;->DEFAULT_INSTANCE:Lu5/i;

    .line 29
    .line 30
    invoke-direct {p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/x$b;-><init>(Lcom/google/crypto/tink/shaded/protobuf/x;)V

    .line 31
    .line 32
    .line 33
    sput-object p1, Lu5/i;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/y0;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    monitor-exit v0

    .line 39
    goto :goto_2

    .line 40
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p1

    .line 42
    :cond_1
    :goto_2
    return-object p1

    .line 43
    :pswitch_1
    sget-object p1, Lu5/i;->DEFAULT_INSTANCE:Lu5/i;

    .line 44
    .line 45
    return-object p1

    .line 46
    :pswitch_2
    new-instance p1, Lu5/i$a;

    .line 47
    .line 48
    invoke-direct {p1}, Lu5/i$a;-><init>()V

    .line 49
    .line 50
    .line 51
    return-object p1

    .line 52
    :pswitch_3
    new-instance p1, Lu5/i;

    .line 53
    .line 54
    invoke-direct {p1}, Lu5/i;-><init>()V

    .line 55
    .line 56
    .line 57
    return-object p1

    .line 58
    :pswitch_4
    const/4 p1, 0x3

    .line 59
    new-array p1, p1, [Ljava/lang/Object;

    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    const-string v2, "version_"

    .line 63
    .line 64
    aput-object v2, p1, v1

    .line 65
    .line 66
    const-string v1, "params_"

    .line 67
    .line 68
    aput-object v1, p1, v0

    .line 69
    .line 70
    const/4 v0, 0x2

    .line 71
    const-string v1, "keyValue_"

    .line 72
    .line 73
    aput-object v1, p1, v0

    .line 74
    .line 75
    const-string v0, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n"

    .line 76
    .line 77
    sget-object v1, Lu5/i;->DEFAULT_INSTANCE:Lu5/i;

    .line 78
    .line 79
    new-instance v2, Lcom/google/crypto/tink/shaded/protobuf/c1;

    .line 80
    .line 81
    invoke-direct {v2, v1, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/c1;-><init>(Lcom/google/crypto/tink/shaded/protobuf/x;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    return-object v2

    .line 85
    :pswitch_5
    const/4 p1, 0x0

    .line 86
    return-object p1

    .line 87
    :pswitch_6
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    return-object p1

    .line 92
    nop

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final x()Lcom/google/crypto/tink/shaded/protobuf/i;
    .locals 1

    iget-object v0, p0, Lu5/i;->keyValue_:Lcom/google/crypto/tink/shaded/protobuf/i;

    return-object v0
.end method

.method public final y()Lu5/k;
    .locals 1

    iget-object v0, p0, Lu5/i;->params_:Lu5/k;

    if-nez v0, :cond_0

    invoke-static {}, Lu5/k;->t()Lu5/k;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final z()I
    .locals 1

    iget v0, p0, Lu5/i;->version_:I

    return v0
.end method
